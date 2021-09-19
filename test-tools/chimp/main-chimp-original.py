import os
import sys
import time
import logging
import random
import string
import tempfile
from xml.etree import ElementTree as ET


PACKAGE = sys.argv[1]
THROTTLE = 0.2
EVENT_TYPE_DIST = [
    ('click', 30, ['clickable']),
    ('back', 2, None),
    ('drag', 20, ['scrollable']),
    ('longclick', 30, ['long-clickable']),
    ('text', 30, ['text']),
    ('menu', 2, None),
    ('restart', 1, None),
]
STR_MIN_LEN, STR_MAX_LEN = 2, 10
DRAG_MIN_STEP, DRAG_MAX_STEP = 1, 10

logging.basicConfig(level=logging.DEBUG,
                    stream=sys.stdout,
                    # %(asctime)s
                    format='[%(asctime)s %(levelname)s] %(message)s',
                    datefmt='%H:%M:%S')

logging.info('Package ID = ' + PACKAGE)


def exec_cmd(cmd, log=True):
    logging.debug('$ ' + cmd)
    ts_start_dump = int(round(time.time() * 1000))
    ret = os.popen(cmd).read()
    ts_done_dump = int(round(time.time() * 1000))
    logging.debug('[TIME_USAGE][%d] %s' % (ts_done_dump - ts_start_dump, cmd))
    if log and ret: logging.debug(ret)


def adb_shell(cmd, log=True):
    exec_cmd('adb shell "%s"' % cmd, log)


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


def check_any_attr(elem, attrs):
    global PACKAGE
    if elem.get('package', None) != PACKAGE: return False
    for attr in attrs:
        if attr == "text":
            if elem['class'] == "android.widget.EditText":
                return True
        elif attr in elem and elem[attr] == "true":
            return True
    return False


def gather_elements(root, attrs):
    ret = []
    node_attr = root.attrib
    if check_any_attr(node_attr, attrs):
        ret.append(parse_pos(node_attr['bounds']))
    for ch in root:
        ret.extend(gather_elements(ch, attrs))
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


tmp_dir = tempfile.TemporaryDirectory()

ct_out_of_app = 0
while True:
    time.sleep(THROTTLE)

    curr_act = get_curr_app()
    if not curr_act.startswith(PACKAGE + '/') and not curr_act.startswith('PopupWindow:') and curr_act != PACKAGE:
        if curr_act.endswith('/com.android.packageinstaller.permission.ui.GrantPermissionsActivity'):
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

    adb_shell('uiautomator dump', log=False)
    tmp_file_path = os.path.join(tmp_dir.name, 'dump.xml')
    exec_cmd('adb pull /sdcard/window_dump.xml ' + tmp_file_path, log=False)
    root = ET.parse(tmp_file_path).getroot()[0]

    w_avail, avail_events = 0, []
    for event_type, w, event_attrs in EVENT_TYPE_DIST:
        elems = None
        if event_attrs:
            elems = gather_elements(root, event_attrs)
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

    rand_elem = random.choice(event_elems)

    if event_type == 'click':
        pos = rand_pos(rand_elem)
        logging.debug('(%d, %d)' % pos)
        adb_shell('input tap %d %d' % pos)
        continue

    if event_type == 'longclick':
        (x, y) = rand_pos(rand_elem)
        logging.debug('(%d, %d)' % (x, y))
        adb_shell('input touchscreen swipe %d %d %d %d 500' % (x, y, x, y))
        continue

    if event_type == 'text':
        rand_str = ''.join(random.choice(string.ascii_letters + string.digits)
                        for _ in range(random.randint(STR_MIN_LEN, STR_MAX_LEN)))
        pos = rand_pos(rand_elem)
        adb_shell('input tap %d %d' % pos)
        adb_shell("input text " + rand_str) # Safe for alphanumerics
        continue

    if event_type == 'drag':
        cmds = []
        points = [rand_pos(rand_elem) for _ in range(0, random.randint(DRAG_MIN_STEP, DRAG_MAX_STEP) + 2)]
        (last_x, last_y) = points[0]
        for (x, y) in points[1:]:
            cmds.append('input touchscreen swipe %d %d %d %d 10' % (last_x, last_y, x, y))
            last_x, last_y = x, y
        adb_shell(' && '.join(cmds))
        continue

    logging.error('Should never reach here')
    sys.exit(1)
