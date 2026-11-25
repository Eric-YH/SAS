proc import datafile = "/home/u64635748/Chara_data2.xlsx"
DBMS = xlsx out = Chara_data0 replace ; 
run;

data Chara_data1;
set Chara_data0;
DOB_year = Scan(DOB,3,"/"); 
DOB_month = Substr(DOB,1,1);
DOB_day = Scan(DOB,2,"/");
DOB_new1= trim(DOB_year) || ', ' || trim(DOB_month)|| ', ' || trim(DOB_day);
DOB_new2 = CATX (', ',DOB_year,DOB_month,DOB_day);
 raw_score = TRANWRD(raw_score,'missing',' ');
 index_num = index(DOB,'2007');
run; 
 
data CD2;
set  Chara_data1;
 if index(DOB, '2007') > 0;
run;