x1=linspace(-1,1,100);

for n=1:100
    y=x1(n);
    if y >= 0
        y1(n)=1;
    else
        y1(n)=0;
    end
end
plot(x1,y1,'r-d');
grid on;