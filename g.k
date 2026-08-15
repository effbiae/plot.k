\d p
\l plot.k
\d .
gs:"<html><body><pre>\n";ga:{gs,:x,"\n"}
ga"<a href=http://github.com/effbiae/plot.k>github repo</a>\n"
gd:"<>&"!`lt`gt`amp;gimg:{"<img src=",x,">"}
gp:{,/{$[gd[x];"&",($gd x),";";x]}'x}
gnum:0;gpng:{($gnum+:1),".png"}
gfp:{p.po[x;ge]};gfm:{p.mo[x;y;z;ge]}
gen:{ge::"doc/",local:gpng`;."gf",(*2_x),3_x;local}
gq:{{"\n "/"unlikely"\x}'"\n"\"unlikely"/"\n "\x}@1:"eg.k"
{ga gp x;{$["p."~2#x;ga gimg gen x;.x]}x}'gq;
ga"</pre></body></html>";
"doc/index.html"1:gs
