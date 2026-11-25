data proj_1_1;
   infile "/home/u64635748/Patient_HD_age.txt";
   input    
   	@1 pid 	  1.
   	@2 sdate  mmddyy10.
	@12 edate  mmddyy10.
	@22 age    2.;
run;


proc print data = proj_1_1;
format 	sdate  date9.;
format 	edate  date9.;
run;

LIBNAME mydata "/home/u64635748";
DATA mydata.proj_1_1_perm;
    SET proj_1_1;
RUN;