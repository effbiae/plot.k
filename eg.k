\l plot.k
pi:3.14159265
y:`sin a:2*pi*n%2*x:(n%10)+!n:100
p y /plot a springy sin wave

z:y+?n
p(y;z) /plot two waves

peaks:{1+&3{|/1=(<x)0 2}':x}
p`x`y`m!(x;y;(*x)+peaks y) /plot a wave with peak markers

p@+`a`b`c!(10 12 14;5 8 2;10 3 15) /plot a multi line chart

p@+``a`b`c!(`p`q`r;10 12 14;5 8 2;10 3 15) /plot a bar chart
