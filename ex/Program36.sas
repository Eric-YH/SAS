libname cert "s:/workshop/cert/input";
libname results "s:/workshop/cert/output";

data cleandata36;
set cert.input36;
group=upcase(group);
if group='A' or group='B';
run;

proc sort data=cleandata36;
by group;
run;

proc means data=cleandata36 median maxdec=0;
by group ;
var  Kilograms;
run;

data results.output36;
set cleandata36;
if Kilograms<40 or Kilograms>200 and group='A' then Kilograms=79;
if Kilograms<40 or Kilograms>200 and group='B' then Kilograms=89;
run;

proc means data=results.output36 mean maxdec=1;
by group ;
run;



