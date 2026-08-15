\d p
\l plot.k
\d .
pi:3.14159265
y:`sin 2*pi*n%2*x:(n%10)+!n:100
p.p(x;y) /line plot a springy sin wave

p.p(x;y;y+?n) /plot two waves

p.p@+`square`linear`log!(({x*x}@!n)%n;!n;0.25*n*`ln@1+!n) /plot a multi line chart

p.p@+``a`b`c!(`p`q`r;10 12 14;5 8 2;10 3 15) /plot a bar chart

peaks:{1+&3{|/1=(<x)0 2}':x}
p.p`x`y`m!(x;y;(*x)+peaks y) /plot a wave with peak markers

dft:{[x;r] /slow fourier transform
 dft:{{(+/;-+/)@'{x[z]*/:`cos`sin@\:2*pi*y*z%#x}[x;y]@!#x}[x]'!1+-2!#x}
 mag:{%+/x*x}@+:
 ((!#m)*r%#x)!m:mag dft x}
s:{[f;t]`sin 2*pi*f*t}
n:200;r:500;t:(!n)%r
g:s[10;t]+0.5*s[32;t]+(?n)%4
f:dft[g]r
p.m[2 1;((t;g);(!f;.f));(`suptitle!,"Fourier Transform"),(`xlabel!,"Hz")]
/
n:10
p.p@+``a`b`c!(`$$'!n;!n;!n;!n) /plot a bar chart
p.p@+(`,`$$!7)!(,`$$'!n),(7#,!n) /plot a bar chart
