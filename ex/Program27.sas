libname cert "s:/workshop/cert/input";
libname results "s:/workshop/cert/output";

data results.output27a;
set cert.input27;
if upcase(country)="US";
run;

proc sort data=results.output27a;
by state descending Postal_Code employee_ID;
run;

data results.output27b;
set cert.input27;
run;
proc sort data=results.output27b nodupkey;
   by descending Postal_Code;
run;