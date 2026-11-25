

data earnings2;
   Interest = .03;
   Total = 60000;
   do COUNTER = 1 to 5;    
      Total + Interest*Total;
      Year+1;
      output;          
   end;
   format Total dollar10.2;
run;


data invest;
	capital = 60000;
   do while(Capital<100000);  
      capital+capital*.03;
      Year+1;    
   end;
run;
