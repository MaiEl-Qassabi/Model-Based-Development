function [y,z]= PrimeNo(x)
if x<=1
    z=0;
    y=0;
else
    for i=2:x-1
        if mod(x,i)==0
            z=0;
           y=0;
           break
        else
            y=x;
            z=1;
        end
    end
end
end