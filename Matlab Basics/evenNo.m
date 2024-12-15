function [y,t] = evenNo(x)
if mod(x,2)==0
   y =x; 
   t=1;
else
    t=0;
    y=0;
end
end