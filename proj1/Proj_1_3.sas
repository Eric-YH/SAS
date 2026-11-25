proc import datafile = "/home/u64635748/score_data.xlsx"
DBMS = xlsx out = scoredata0 replace ; 
run;


LIBNAME score "/home/u64635748";
DATA score.scoredata;   
   set scoredata0;
run;
   
proc print DATA= score.scoredata; 
run;  