c:`blue`red`orange
t:`line`bar
f:{$[          ~^`I`F?@x;o@,x
                   `M=@x;`t`x!(t@~^(!x)?`;`"+"!,+x)
   (~`m=@x)&&/~^`I`F?@'x;`t`x!(*t;(,!#*x),x)
               ~^(!x)?`t;x
               ~^(!x)?`x;`t`x!(*t;x);x]}
d:{f[x],`color!,c}
p:{q d x}
q:{"plot.data"1:`j@x;."\\python3 plot.py"}
s:{({`rc`x!(x,y;z)}.'+!x,y)@'d'z}
r:{q@`rc`p!(x,y;s[x;y;z])}
