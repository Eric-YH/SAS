libname cert    's:/workshop/cert/input';
libname results 's:/workshop/cert/output';

proc sort data=cert.input08a;
by ID;
run;
proc sort data=cert.input08b;
by ID;
run;
data results.match08;
merge cert.input08a (in=a) cert.input08b(in=b);
if a and b ;
run;
data results.nomatch08 (drop=ex:);
merge cert.input08a (in=a) cert.input08b(in=b);
if not(a and b) ;
run;
