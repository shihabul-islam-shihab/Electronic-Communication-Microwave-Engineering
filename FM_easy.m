clc;
clear all;
close all;
t=0:0.001:2; 
mi=3; %modulating index

Am=1;  
fm=3; 
m=Am*sin(2*pi*fm*t);

Ac=1;          
fc=20;  
c=Ac*sin(2*pi*fc*t);

fm=Ac*cos(2*pi*fc*t+mi*(sin(2*pi*fm*t))); % equation for frequency modulating signal
figure;

subplot(3,1,1);
plot(t,m);
title('message signal');

subplot(3,1,2);
plot(t,c);
title('carrier signal');

subplot(3,1,3);
plot(t,fm);
title('frequency modulated signal');
