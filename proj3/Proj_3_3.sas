proc import datafile = "/home/u64635748/score_data_id_class.xlsx"
DBMS = xlsx out = score_data_id_class0 replace ; 
run;

proc import datafile = "/home/u64635748/class_info.xlsx"
DBMS = xlsx out = class_info0 replace ; 
run;


proc sort data = score_data_id_class0;
by class;
run;
proc sort data = class_info0;
by class;
run;

data MMA ; 
merge class_info0 (in = B) score_data_id_class0(in = A);  
by class;
if B = 1;
run;