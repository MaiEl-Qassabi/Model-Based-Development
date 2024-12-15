function [y,z]=PerfectNo(x)
sum=0;
for i=1:x-1
    if rem(x,i)==0
        sum=sum+i;
    end
end
if sum==x
    y=x;
    z=1;
else
    y=0;
    z=0;
end