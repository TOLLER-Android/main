import os
import sys
import pickle
import json

TIME_ALL = 3600
TS_STEP = 60

cov_recs = []

for fp in sys.argv[1:]:
    with open(fp, 'rb') as f:
        cov_recs.append([(ts, len(el)) for (ts, el) in sorted(pickle.load(f), reverse=True)])

ret = []
gct = 0
for gts in range(TS_STEP, TIME_ALL + TS_STEP, TS_STEP):
    for rec in cov_recs:
        while rec:
            (ts, ct) = rec[-1]
            if ts < gts:
                gct += ct
                rec.pop()
                # print(ts)
            else: break
    # print(gts, gct)
    ret.append(gct)

print(json.dumps({
    'ct': len(sys.argv) - 1,
    'd': ret
}))
