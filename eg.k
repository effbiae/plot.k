\l plot.k
pi:3.14159265
y:`sin a:2*pi*n%2*x:(n%10)+!n:100
p y

z:y+-2+4*?n
p(x;y;z)

peaks:{1+&3{(1=*|>x)|1=*|<x}':x}
p`x`y`m!(x;y;(*x)+peaks y)

/p`t`d!`bar,(`a`b`c!(10 12 14;5 8 2;10 3 15))
