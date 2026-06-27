clc;
clear all;
close all;
a=1; 
fm=5; 
fc=50; 
t=0:0.001:1;

m=a/2.*square(2*pi*fm*t)+a/2;  %  binary message pulse 
%m=square(2*pi*fm*t);
c=a*sin(2*pi*fc*t);  % carrier signal 
ask=c.*m;    %

figure;
subplot(3,1,1);
plot(t,m);
title('binary messeage pulse');
%axis([0 1 0 1.3]);

subplot(3,1,2);
plot(t,c);
title('carrier signal');

subplot(3,1,3);
plot(t,ask);
title('ASK signal');