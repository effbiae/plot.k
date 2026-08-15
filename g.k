\d p
\l plot.k
\d .
ss:"<html><body><pre>\n"
a:{ss,:x,"\n"}
d:"<>&"!`lt`gt`amp;img:{"<img src=",x,">"}
p:{,/{$[d[x];"&",($d x),";";x]}'x}
inum:0;png:{($inum+:1),".png"}
fp:{p.po[x;ge]};fm:{p.mo[x;y;z;ge]}
gen:{ge::png`;."f",(*2_x),3_x;ge}
q:{{"\n "/"unlikely"\x}'"\n"\"unlikely"/"\n "\x}@1:"eg.k"
{a p x;{$["p."~2#x;a img gen x;.x]}x}'q;
a"</pre></body></html>";
"index.html"1:ss
