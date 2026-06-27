clc;
close all;

Am = 2;
Ac = 4;
fm = 5; %fm<fc
fc = 100;
m = 10;
t = 0:0.001:1;
        
%Equation of the message signal
s1 = Am*cos(2*pi*fm*t);
subplot(4,1,1);
plot(t,s1,'blue','LineWidth',1);
xlabel('Time (s)');
ylabel('Amplitude');
title('Message');
grid on;
%carrier
s2 = Ac*cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,s2,'magenta','LineWidth',1);
xlabel('Time (s)');
ylabel('Amplitude');
title('Carrier');
grid on;

%instantaneous voltage of resulting
s = Ac*cos(2*pi*fc*t +  m.*sin(2*pi*fm*t));

subplot(4,1,3);
plot(t,s,'red','LineWidth',1);
xlabel('Time (s)');
ylabel('Amplitude');
title('FM');
grid on;
%one sided spectrum using FFT
N = length(s);
FM_spectrum = fft(s)/N;
frequencies = (0:(N/2-1))*Fs/N;
subplot(4,1,4);
stem(frequencies,abs(FM_spectrum(1:floor(N/2))),'red','LineWidth',1);
xlabel('Time (s)');
ylabel('Amplitude');
title('Frequency Spectrum');
grid on;

