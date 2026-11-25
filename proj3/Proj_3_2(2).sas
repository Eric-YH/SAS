proc import datafile = "/home/u64635748/sale_state.xlsx"
DBMS = xlsx out = sale_state0 replace ; 
run;

data sale_state1;
set sale_state0;
   ARRAY sale (2,3) saleCA1--saleTX3; 
   array state(2) state_CA state_TX;
	DO i = 1 TO 2;
	state(i)=0;
	DO j = 1 TO 3;
		state(i) = sum(state(i), sale(i,j));    /* SUM 函数 */
	End;
	End;
run;

proc print data = sale_state1 (drop = i j);
format saleCA1 -- state_TX dollar10.;
run;