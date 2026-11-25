proc import datafile = "/home/u64635748/Patient_HD.xlsx"
DBMS = xlsx out = Patient_HD0 replace ; 
run;

data Patient_HD1;
set Patient_HD0;
s_year = year (Start_date);
days=intck('day',Start_date,End_date);
day_diff1 = datDIF(Start_date,End_date,'ACT/ACT');
analysis_date=today();
format analysis_date date10.;
run;
