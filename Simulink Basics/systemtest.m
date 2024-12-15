 disp('Choose the type of simulink to creat ');
 disp('1. Model ');
 disp('2. library ');
 disp('3. Subsystem in Model ');
 x=input(" Enter your choice: ");
 y = input(" The name of Model or Library  ","s");
 switch x
     case 1
         new_system(y);
         open_system(y);
     case 2
         new_system(y,'Library');
         open_system(y);
     case 3

         z=input("The name of Subsystem",'s');
         open_system(y);
         open_system([y '/' z]); % string concteration

 end


    