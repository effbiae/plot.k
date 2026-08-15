import matplotlib.pyplot as p;import json
with open("plot.data")as f:d=json.load(f)
def b(d,ax):
 g={};c=d.get("color",'blue red orange'.split());t=d["t"];
 if type(d["x"])==list:g.update(dict(zip("xyz",d["x"])))
 else:
  if t in["line","scatter"]:g.update(d["x"])
 if t=="line":
  if"+"in d["x"]:
   t=d["x"]["+"];[ax.plot(range(len(t[k])),t[k],label=k)for k in t];p.legend()
  else:
   ax.plot(g['x'],g['y'],color=c[0])
   if'z'in g:
    t=ax.twinx();t.plot(g['x'],g['z'],color=c[1]);t.tick_params(axis='y',labelcolor='red')
   if'm'in g:ax.vlines(g['m'],ymin=min(g['y']),ymax=max(g['y']),color=c[2],linewidth=1)
 if t=="bar":
  import numpy as np;t=d["x"]["+"];n=t[""];del t[""];k=list(t.keys());v=list(t.values())
  x=np.arange(len(t[k[0]]));width=1/len(x)/1.2;f=len(x)/len(t)*width
  [ax.bar(x+a*f,v[a],width,label=k[a])for a in range(len(t))]
  ax.set_xticks(x+f);ax.set_xticklabels(n);ax.legend()
if'rc'in d:
 z=d['rc'];fig,ax=p.subplots(*z)
 for x in d['p']:
  def ag(a,x,y):
   if z[0]==1:return a[y]
   if z[1]==1:return a[x]
   return a[x,y]
  b(x['x'],ag(ax,*x['rc']))
else:fig,ax=p.subplots();b(d,ax)
def set(x,d):
 for y in[p,fig]:
  if x in dir(y)and x in d:getattr(y,x)(d[x])
[set(x,d)for x in 'suptitle title xlabel'.split()]
if "out"in d:p.savefig(d['out'])
else:p.show()
