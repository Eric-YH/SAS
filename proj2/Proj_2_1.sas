proc import datafile = "/home/u64635748/Sale.xlsx"
DBMS = xlsx out = sale0 replace ; 
run;

data sale1;
set sale0;
label emid = "employee id"
	sale_m1 = "sale in Jan."
	sale_m2 = "sale in Feb."
	sale_m3 = "sale in Mar.";
	averagesale = mean(sale_m1, sale_m2, sale_m3);
	format averagesale dollar12.2;
	format sale_m1 dollar12.2;
	format sale_m2 dollar12.2;
	format sale_m3 dollar12.2;
RUN;	
	
PROC PRINT DATA = sale1 label;
RUN;