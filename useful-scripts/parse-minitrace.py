import os
import sys
import pickle

list_output_file = os.environ.get('LIST_OUT')
timed_list_output_file = os.environ.get('TIMED_LIST_OUT')

mtds = set()
mtds_first = None
ts_first = None
mtds_exclude = set()
mtds_by_time = []

for fp in sys.argv[1:]:
    # print(fp)
    curr_mtds = None
    curr_uniq_mtds = set()
    try:
        pos1 = fp.index('cov-') + 4
        pos2 = fp.index('.log', pos1)
        ts = int(fp[pos1:pos2])
        if not ts_first or ts_first > ts:
            curr_mtds = set()
    except ValueError:
        print('Unsupported path: ' + fp)
        sys.exit(-1)
    with open(fp) as f:
        lines = f.read().strip().splitlines()
        for line in lines:
            line = line.strip()
            if line[0:2] != '0x':
                continue
            # 0x7fb8e7f840c0  com.facebook.FacebookRequestError$b     <init>  ()V     SourceFile      12      100101010101
            segs = line.split()
            mtd_sig = '/'.join(segs[1:4])
            if mtd_sig not in mtds:
                curr_uniq_mtds.add(mtd_sig)
            mtds.add(mtd_sig)
            if curr_mtds is not None:
                curr_mtds.add(mtd_sig)
    if ts_first and curr_uniq_mtds:
        mtds_by_time.append((ts - ts_first, curr_uniq_mtds))
    if curr_mtds:
        ts_first = ts
        mtds_first = curr_mtds
        print(fp)

print('|methods|', len(mtds))
print('|init_methods|', len(mtds_first))
incr_mtds = mtds.difference(mtds_first)
print('|methods - init_methods|', len(incr_mtds))

if list_output_file:
    print('writing to ' + list_output_file)
    with open(list_output_file, 'wb') as handle:
        pickle.dump(incr_mtds, handle)

if timed_list_output_file:
    print('writing to ' + timed_list_output_file)
    with open(timed_list_output_file, 'wb') as handle:
        pickle.dump(mtds_by_time, handle)
