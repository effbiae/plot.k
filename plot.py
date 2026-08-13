import matplotlib.pyplot as p;import json as j;from functools import *
orin =lambda x,y:reduce(max,[a in y for a in x])
andin=lambda x,y:reduce(min,[a in y for a in x])
c='blue red orange'.split()
with open("plot.data") as f:d=j.load(f)
fig,ax=p.subplots()
if type(d["d"])==list:
 d=d["d"];x,y=d[0],d[1]
 if len(d)==3:z=d[2]
else:
 if orin(["line","scatter"],d["t"]):globals().update(d["d"])
if andin("xy",globals()):ax.plot(x,y,color=c[0])
if 'z' in globals():t=ax.twinx();t.plot(x,z,color=c[1])
if 'm' in globals():ax.vlines(m,ymin=min(y),ymax=max(y),color=c[2])
p.show()
