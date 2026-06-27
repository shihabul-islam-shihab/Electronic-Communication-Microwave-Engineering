clc;   clear;
close all;
%input
Am = 2;
Ac = 4;
fm = 5; %fm<fc
fc = 70;
m = 6;
t = 0:0.001:1;

%Equation of the message signal
s1 = Am*cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,s1,'blue','LineWidth',1);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');

%carrier
s2 = Ac*cos(2*pi*fc*t);
subplot(3,1,2);
plot(t,s2,'magenta','LineWidth',1);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

%FM
s = Ac*cos(2*pi*fc*t+m.*sin(2*pi*fm*t));
subplot(3,1,3);
plot(t,s,'red','LineWidth',1);
xlabel('Time');
ylabel('Amplitude');
title('FM Signal');