import matplotlib.pyplot as p;import json as j;from functools import *;from numpy import *
orin =lambda x,y:reduce(max,[a in y for a in x])
andin=lambda x,y:reduce(min,[a in y for a in x])
c='blue red orange'.split()
with open("plot.data") as f:d=j.load(f)
t=d["t"];fig,ax=p.subplots()
if type(d["d"])==list:
 d=d["d"];x,y=d[0],d[1]
 if len(d)==3:z=d[2]
else:
 if t in ["line","scatter"]:globals().update(d["d"])
if t=="line":
 if andin("xy",globals()):ax.plot(x,y,color=c[0])
 if 'z' in globals():t=ax.twinx();t.plot(x,z,color=c[1])
 if 'm' in globals():ax.vlines(m,ymin=min(y),ymax=max(y),color=c[2])
if t=="bar":
 d=d["d"];n=d[""];del d[""];c=list(d.keys());g=list(d.values())
 x=arange(len(d));width=1/(len(x)**2)
 for a in x:ax.bar(x+len(x)*a/2*width,g[a],width,label=c[a])
 ax.set_xticks(x+width*len(x)/2);ax.set_xticklabels(n);ax.legend()
p.show()
