t:`line`bar
d:{$[`M=@x;`t`x!(t@~^(!x)?`;`"+"!,+x);`t`x!(*t;x)]}
r:{"plot.data"1:`j@x;."\\python3 plot.py"}
p:{r d x}
po:{r d[x],`out!,y}
s:{{`rc`x!(x;y)}'[+!x;d'y]}
md:{(`rc`p!(x;s[x;y])),z}
m:{r md[x;y;z]}
mo:{[x;y;z;u]r md[x;y;z],`out!,u}
