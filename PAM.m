clc;
clear all;
close all;
Am=1;
Ac=1;
fm=5; 
fc=10*fm;
t=0:.001:1/2;

m=Am*sin(2*pi*fm*t);
c=Ac/2*square(2*pi*fc*t)+Ac/2; 

s=m.*c;
figure;
subplot(3,1,1);
plot(t,m);
title('message signal');

subplot(3,1,2);
plot(t,c);
title('carrier signal');

subplot(3,1,3);
plot(t,s);
title('pam signal');
