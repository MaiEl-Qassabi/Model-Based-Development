wn= 1;
zeta= 1;
num =[0 wn^2];
den = [1, 2*wn*zeta , wn^2 ];
G=tf(num,den);
subplot(7,1,7);
title('zeta : %d',zeta);
xlabel('time');
hold on

step(G);