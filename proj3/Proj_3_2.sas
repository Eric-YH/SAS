proc import datafile = "/home/u64635748/allscore_miss_text.xlsx"
DBMS = xlsx out = allscore_miss_text0 replace ; 
run;

data allscore_miss_text1;
set allscore_miss_text0;
   ARRAY score_var (4) $ read math science write;   
   array score_n(4) read_n math_n science_n write_n;
   DO i = 1 TO 4;                       
      IF score_var(i) = "missing" THEN score_var(i) =" ";  
      score_n(i) = input(score_var(i), 8.);
   END;  
   drop i read math science write;
   rename read_n=read math_n=math science_n=science write_n=write;
run;

proc contents data=allscore_miss_text1;
run;