libname cert "s:/workshop/cert/input";
libname results "s:/workshop/cert/output";

data results.output12;
set cert.input12;
do while(salary<=500000);
salary+salary*0.0565;
year+1;
output;
end;



