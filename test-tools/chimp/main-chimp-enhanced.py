import os
import socket
import sys
import json
import time
import logging
import random
import base64
import string

PACKAGE = sys.argv[1]
TOLLER_PORT = int(os.environ.get('TOLLER_PORT', '55555'))
THROTTLE = 0.2
EVENT_TYPE_DIST = [
    ('click', 30, ['vclk', 'vtch', 'cl']),
    ('back', 2, None),
    ('drag', 20, ['scr']), # vtch
    ('longclick', 30, ['vlclk', 'lcl']),
    ('text', 30, ['et']),
    ('menu', 2, None),
    ('restart', 1, None),
]
STR_MIN_LEN, STR_MAX_LEN = 2, 10
DRAG_MIN_STEP, DRAG_MAX_STEP = 1, 10
DRAG_STEP_DELAY = 0.01
NO_TOLLER_EVENT_EXEC = os.environ.get('CLIP_BOUND')

logging.basicConfig(level=logging.DEBUG,
                    stream=sys.stdout,
                    # %(asctime)s
                    format='[%(asctime)s %(levelname)s] %(message)s',
                    datefmt='%H:%M:%S')

logging.info('Package ID = ' + PACKAGE)
logging.info('Toller port # = ' + str(TOLLER_PORT))
logging.info('NO_TOLLER_EVENT_EXEC = ' + str(NO_TOLLER_EVENT_EXEC))

ctrl_sock = None
ctrl_recv_buf = b''


def adb_shell(cmd):
    cmd = 'adb shell "%s"' % cmd
    logging.debug('$ ' + cmd)
    ts_start_dump = int(round(time.time() * 1000))
    ret = os.popen(cmd).read()
    ts_done_dump = int(round(time.time() * 1000))
    logging.debug('[TIME_USAGE][%d] %s' % (ts_done_dump - ts_start_dump, cmd))
    if ret: logging.debug(ret)


def press_key(keycode):
    adb_shell('input keyevent ' + keycode)


def wake_app():
    global PACKAGE
    adb_shell('monkey -p ' + PACKAGE + ' 1 >/dev/null')
    time.sleep(1.0)


def kill_app():
    global PACKAGE
    adb_shell('am force-stop ' + PACKAGE)
    time.sleep(1.0)


def get_curr_app():
    return os.popen("adb shell \"dumpsys window windows | grep -E 'mCurrentFocus'\" | cut -d ' ' -f 5 | cut -d '}' -f 1").read().strip()


def close_ctrl_sock():
    global ctrl_sock
    if not ctrl_sock: return
    try:
        ctrl_sock.close()
    except Exception as _:
        pass
    ctrl_sock = None


def ctrl_send_cmd(cmd):
    global ctrl_sock
    logging.debug('> ' + cmd)
    ctrl_sock.sendall((cmd + '\n').encode())


def ctrl_recv_line():
    global ctrl_sock, ctrl_recv_buf
    while True:
        try:
            pos = ctrl_recv_buf.index(b'\n')
            ret = ctrl_recv_buf[:pos]
            ctrl_recv_buf = ctrl_recv_buf[pos + 1:]
            logging.debug('|line| = ' + str(len(ret)))
            return ret.decode('utf-8')
        except ValueError:
            try:
                buf_size_before = len(ctrl_recv_buf)
                # logging.debug('Start reading, |buf| = ' + str(buf_size_before))
                ctrl_sock.settimeout(2.0)
                ctrl_recv_buf += ctrl_sock.recv(32768)
                buf_size_after = len(ctrl_recv_buf)
                # logging.debug('Finished reading, |buf| = ' + str(buf_size_after))
                if buf_size_after == buf_size_before:
                    logging.warning('Received nothing, connection seems closed')
                    return None
            except Exception as e:
                logging.warning('Exception while receiving data: ' + str(e))
                return None


def check_any_attr(elem, attrs):
    for attr in attrs:
        if attr in elem:
            return attr, elem[attr]
    return None, None


def gather_elements(root, attrs, root_bound):
    ret = []
    if 'bound' not in root: return ret
    curr_bound = parse_pos(root['bound'])
    (sl, st, sr, sb) = root_bound
    (cl, ct, cr, cb) = curr_bound
    if cr < sl or cl > sr or ct > sb or cb < st: return ret
    curr_bound = (max(cl, sl), max(ct, st), min(cr, sr), min(cb, sb))
    attr, attr_val = check_any_attr(root, attrs)
    if attr_val:
        ret.append((root['hash'], curr_bound, attr, attr_val))
    for ch in root.get('ch', []):
        ret.extend(gather_elements(ch, attrs, root_bound))
    return ret


def parse_pos(pos):
    pos_c1 = pos.find(",")
    left = int(pos[1: pos_c1])
    pos_b1 = pos.find("]")
    top = int(pos[pos_c1 + 1: pos_b1])
    pos_c2 = pos.find(",", pos_b1)
    right = int(pos[pos_b1 + 2: pos_c2])
    bottom = int(pos[pos_c2 + 1: -1])
    return left, top, right, bottom


def rand_pos(bound):
    (left, top, right, bottom) = bound
    return (random.randint(left, right), random.randint(top, bottom))


def is_within_bound(bound, pos):
    (left, top, right, bottom) = bound
    (x, y) = pos
    return x >= left and x <= right and y >= top and y <= bottom


def base64_str_encode(str):
    return base64.b64encode(str.encode('utf-8')).decode('utf-8')


ct_out_of_app = 0
covered_handlers = set()
while True:
    if not ctrl_sock:
        kill_app()
        wake_app()
        try:
            ctrl_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            ctrl_sock.settimeout(2.0)
            ctrl_sock.connect(('127.0.0.1', TOLLER_PORT))
            ctrl_send_cmd('info')
            if not ctrl_recv_line():
                logging.warning('No ping response from Toller, retrying..')
                close_ctrl_sock()
                continue
            ctrl_send_cmd('a11y_info_on')
        except Exception as e:
            logging.warning('Unable to connect to Toller, retrying..')
            close_ctrl_sock()
            # time.sleep(1.0)
            continue

    time.sleep(THROTTLE)

    curr_act = get_curr_app()
    if not curr_act.startswith(PACKAGE + '/') and not curr_act.startswith('PopupWindow:') and curr_act != PACKAGE:
        if curr_act.endswith('/com.android.packageinstaller.permission.ui.GrantPermissionsActivity') or curr_act == "Application":
            logging.debug('Permission dialog')
            # Should be noted that there could be an additional checkbox in the dialog.
            # The checkbox says 'never ask again'.
            for _ in range(random.randint(2, 4)):
                press_key('KEYCODE_TAB')
            press_key('KEYCODE_ENTER')
        else:
            logging.debug('Out of app: ' + curr_act)
            press_key('KEYCODE_BACK')
            press_key('KEYCODE_HOME')
            ct_out_of_app += 1
            if ct_out_of_app >= 5:
                logging.warning('Constantly out of app, restarting..')
                kill_app()
            wake_app()
        continue
    ct_out_of_app = 0

    ts_start_dump = int(round(time.time() * 1000))
    ctrl_send_cmd('run')
    ui_json = ctrl_recv_line()
    if not ui_json:
        close_ctrl_sock()
        continue
    ui_all = json.loads(ui_json)
    ts_done_dump = int(round(time.time() * 1000))
    logging.debug('[TIME_USAGE][%d] TOLLER_DUMP' % (ts_done_dump - ts_start_dump))

    ui_focus = None
    for ui in ui_all:
        if ui.get('focus'):
            ui_focus = ui
            break

    if not ui_focus:
        logging.warning('No screen focused, restarting..')
        kill_app()
        wake_app()
        continue

    ui_bound = parse_pos(ui_focus['bound'])
    logging.debug('bound: (%d,%d) to (%d,%d)' % ui_bound)

    w_avail, avail_events = 0, []
    for event_type, w, event_attrs in EVENT_TYPE_DIST:
        elems = None
        if event_attrs:
            elems = gather_elements(ui_focus, event_attrs, parse_pos(ui_focus['bound']))
        if not event_attrs or elems:
            w_avail += w
            avail_events.append((event_type, w, elems))

    r = random.randint(1, w_avail)
    event_type, w_cum, event_elems = None, 0, None
    for event_type, w, event_elems in avail_events:
        w_cum += w
        if r <= w_cum:
            break

    logging.debug('event_type = ' + event_type)
    if event_elems:
        logging.debug('|event_elems| = ' + str(len(event_elems)))

    if event_type == 'restart':
        kill_app()
        wake_app()
        continue

    if event_type == 'back':
        press_key('KEYCODE_BACK')
        continue

    if event_type == 'menu':
        press_key('KEYCODE_MENU')
        continue

    rand_elem, elem_bound, attr, attr_val = random.choice(event_elems)
    rand_elem = str(rand_elem)

    if event_type == 'click':
        pos = rand_pos(elem_bound)
        logging.debug('(%d, %d)' % pos)
        if NO_TOLLER_EVENT_EXEC or attr_val is True or attr_val not in covered_handlers:
            adb_shell('input tap %d %d' % pos)
            covered_handlers.add(attr_val)
        elif attr == 'vclk':
            ctrl_send_cmd('act clk ' + rand_elem)
        elif attr == 'vtch':
            ctrl_send_cmd('act tdown %s %d %d' % (rand_elem, pos[0], pos[1]))
            ctrl_send_cmd('act tup %s %d %d' % (rand_elem, pos[0], pos[1]))
        continue

    if event_type == 'longclick':
        if NO_TOLLER_EVENT_EXEC or attr_val is True or attr_val not in covered_handlers:
            (x, y) = rand_pos(elem_bound)
            logging.debug('(%d, %d)' % (x, y))
            adb_shell('input touchscreen swipe %d %d %d %d 500' % (x, y, x, y))
            covered_handlers.add(attr_val)
        else:
            ctrl_send_cmd('act lclk ' + rand_elem)
        continue

    if event_type == 'text':
        rand_str = ''.join(random.choice(string.ascii_letters + string.digits)
                        for _ in range(random.randint(STR_MIN_LEN, STR_MAX_LEN)))
        pos = rand_pos(elem_bound)
        if NO_TOLLER_EVENT_EXEC:
            adb_shell('input tap %d %d' % pos)
            adb_shell("input text " + rand_str) # Safe for alphanumerics
        else:
            ctrl_send_cmd('act text ' + rand_elem + ' ' + base64_str_encode(rand_str))
        continue

    if event_type == 'drag':
        # ctrl_send_cmd('act tdown ' + rand_elem + ' %d %d' % rand_pos(ui_bound))
        # time.sleep(DRAG_STEP_DELAY)
        # for _ in range(0, random.randint(DRAG_MIN_STEP, DRAG_MAX_STEP)):
        #     ctrl_send_cmd('act tmove ' + rand_elem + ' %d %d' %
        #                   rand_pos(ui_bound))
        #     time.sleep(DRAG_STEP_DELAY)
        # ctrl_send_cmd('act tup ' + rand_elem + ' %d %d' % rand_pos(ui_bound))
        cmds = []
        points = [rand_pos(elem_bound) for _ in range(0, random.randint(DRAG_MIN_STEP, DRAG_MAX_STEP) + 2)]
        (last_x, last_y) = points[0]
        for (x, y) in points[1:]:
            cmds.append('input touchscreen swipe %d %d %d %d 10' % (last_x, last_y, x, y))
            last_x, last_y = x, y
        adb_shell(' && '.join(cmds))
        continue

    logging.error('Should never reach here')
    sys.exit(1)
