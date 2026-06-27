clc;
clear all;
close all;
m=.8; %modulation index
t=0:1/1000:2;

Am=1;
Fm=2;
M=Am*sin(2*pi*Fm*t);
subplot(3,1,1);
plot(t,M);
title('Msg signal M');  grid on;

Ac=2;
Fc=50;
C=Ac*sin(2*pi*Fc*t);
subplot(3,1,2);
plot(t,C);
title('Carrier signal C');   grid on;

%Mal_out
%Sam=(1+m*M).*C ;
Sam=ammod(M,Fc,1000);
subplot(3,1,3);
plot(t,Sam);
title('AM signal');
grid on;
