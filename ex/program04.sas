libname cert    's:/workshop/cert/input';
libname results 's:/workshop/cert/output';

data results.output04;
set cert.input04;
VAR1=round(VAR1); 
VAR2=ROUND(VAR2);
var3=var1*var2;
 VAR20=sum(of var12-var20);
 run;
 