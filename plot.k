c:`blue`red`orange
t:`line`bar
f:{$[`M=@x;`t`x!(t@~^(!x)?`;`"+"!,+x);`t`x!(*t;x)]}
d:{f[x],`color!,c}
p:{r d x}
r:{"plot.data"1:`j@x;."\\python3 plot.py"}
s:{{`rc`x!(x;y)}'[+!x;d'y]}
m:{r@(`rc`p!(x;s[x;y])),z}
