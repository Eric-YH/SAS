libname cert "s:/workshop/cert/input";
libname results "s:/workshop/cert/output";

data results.output13;
set cert.input13;
Chdate=put(Date1,date9.);
num1 =input(Charnum,dollar12.);
run;
proc means data=results.output13 mean;
var num1;
run;
