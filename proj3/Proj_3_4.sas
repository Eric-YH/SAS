proc import datafile = "/home/u64635748/Weight_loss.xlsx"
DBMS = xlsx out = Weight_loss0 replace ; 
run;

data weight_loss1;
   set weight_loss0;
   if weight0 = 9999 then weight0 = .;
   if weight1 = 9999 then weight1 = .;
   if weight2 = 9999 then weight2 = .;
run;

proc sort data = Weight_loss1 ;
by pid gender walk_steps;  
run;
proc transpose data=Weight_loss1
               out=manyper;   
   by pid gender walk_steps;  		
   var weight0 - weight2;
run;

proc print data=manyper;
run;