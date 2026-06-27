clc;clear all;close all;

Fs=600
t=0:1/Fs:2;
A=1;
Fm=5;
Fc=150;
m = 0.5; 

M=A*sin(2*pi*Fm*t);
subplot(4,1,1);
plot(t,M);
title('Msg signal M');  grid on;

C=A*cos(2*pi*Fc*t);
subplot(4,1,2);
plot(t,C);
title('Carrier signal C');   grid on;

%Mal_out
AM=(1+m.*M).*C ;
subplot(4,1,3);
plot(t,AM);
title('AM signal');
grid on;


% Frequency Domain Analysis using FFT
N = length(AM); % Length of the AM signal
AM_spectrumm = fft(AM) / N; % FFT of the AM signal and normalize
fre = (0:(N/2)-1) * Fs / N; % Frequency axis from 0 to Nyquist frequency
% Plot AM signal Spectrum
subplot(4,1,4);
stem(fre, abs(AM_spectrumm(1:floor(N/2))), 'blue', 'Linewidth', 1);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Spectrum(AM)');
