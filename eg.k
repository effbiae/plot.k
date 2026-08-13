\l plot.k
pi:3.14159265
y:`sin a:2*pi*n%2*x:(n%10)+!n:100
p y /plot a springy sin wave

z:y+-2+4*?n
p(y;z) /plot a wave with random jiggles

peaks:{1+&3{|/1=(<x)0 2}':x}
p`x`y`m!(x;y;(*x)+peaks y) /plot a wave with peak markers

/plot a bar chart
p(`t`d!`bar,(`a`b`c!(10 12 14;5 8 2;10 3 15)))
