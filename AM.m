clc;
clear all;
close all;

% Time vector
t = 0:1/1000:2; 

% Message signal parameters
Am = 1;       % Amplitude of message signal
Fm = 2;       % Frequency of message signal
M = Am * sin(2 * pi * Fm * t);  % Message signal

% Plot the message signal
subplot(3, 1, 1);
plot(t, M);
title('Message Signal (M)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Carrier signal parameters
Ac = 3;       % Amplitude of carrier signal
Fc = 20;      % Frequency of carrier signal
C = Ac * sin(2 * pi * Fc * t);  % Carrier signal

% Plot the carrier signal
subplot(3, 1, 2);
plot(t, C);
title('Carrier Signal (C)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Modulation index
m = Am / Ac;  % Modulation index

% Amplitude Modulated (AM) signal
Sam = (1 + m * M) .* C; 

% Plot the AM signal
subplot(3, 1, 3);
plot(t, Sam);
title('Amplitude Modulated (AM) Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Display modulation index in the command window
fprintf('Modulation index: %.2f\n', m);
