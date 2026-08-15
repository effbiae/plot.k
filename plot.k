c:`blue`red`orange
t:`line`bar
f:{$[              `M=@x;`t`x!(t@~^(!x)?`;`"+"!,+x)
    $[`m=@x; $[~^(!x)?`t;x
               ~^(!x)?`x;`t`x!(*t;x);x]
         $[&&/~^`I`F?@'x;`t`x!(*t;x);x]]]}
d:{f[x],`color!,c}
p:{r d x}
r:{"plot.data"1:`j@x;."\\python3 plot.py"}
s:{{`rc`x!(x;y)}'[+!x;d'y]}
m:{r@(`rc`p!(x;s[x;y])),z}
