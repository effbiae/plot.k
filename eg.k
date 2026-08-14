\d p
\l plot.k
\d .
pi:3.14159265
y:`sin a:2*pi*n%2*x:(n%10)+!n:100
/
p y /plot a springy sin wave

z:y+?n
p(y;z) /plot two waves

p@+`a`b`c!(10 12 14;5 8 2;10 3 15) /plot a multi line chart

p@+``a`b`c!(`p`q`r;10 12 14;5 8 2;10 3 15) /plot a bar chart

n:10
p@+``a`b`c!(`$$'!n;!n;!n;!n) /plot a bar chart
p@+(`,`$$!7)!(,`$$'!n),(7#,!n) /plot a bar chart

peaks:{1+&3{|/1=(<x)0 2}':x}
p`x`y`m!(x;y;(*x)+peaks y) /plot a wave with peak markers
\

dft:{[x;r] /slow fourier transform
 dft:{{(+/;-+/)@'{x[z]*/:`cos`sin@\:2*pi*y*z%#x}[x;y]@!#x}[x]'!1+-2!#x}
 mag:{%+/x*x}@+:
 ((!#m)*r%#x)!m:mag dft x}
`0:,"hi"
s:{[f;n]`sin 2*pi*f*(!n)%n}
n:200
g:s[30;n]+0.5*s[70;n]+(?n)%9
f:dft[g]n
p.p g
p.q(`t`x!(`line;(!f;.f))),(`title!,"Frequencies"),(`xlabel!,"Hz")
