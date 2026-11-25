proc import datafile = "/home/u64635748/score_data_miss777.xlsx"
DBMS = xlsx out = scoredata0 replace ; 
run;

DATA scoredata1;   
   set scoredata0;
   if score1=777 then score1=.;
   if score2=777 then score2=.;
   if score3=777 then score3=.;
   averagescore = mean(score1,score2,score3);
   IF AverageScore >= 90 THEN DO;
       grade = 'A'; 
	   pass = 'pass';
    end;
    Else If averageScore >= 80 then do;
       grade = 'B';
       pass = 'pass';
	END;  
	Else If averageScore >= 70 then do;
       grade = 'C';
       pass = 'pass';
	END;  
	Else If averageScore >= 60 then do;
       grade = 'D';
       pass = 'pass';
	END;  
	Else If 0 =< averageScore < 60 then do;
       grade = 'F';
       pass = 'fail';
	END; 
	else do;
		grade = ' ';
       pass = ' ';
	END; 
run;


proc print DATA= scoredata1; 
run;  