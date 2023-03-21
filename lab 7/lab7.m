% Hyrum Coleman, u1365193, Lab 7

close all;
clear;

frequency = [0, 10 100, 1000, 10000, 100000];
Vin = [5, 5, 5, 5, 5, 5];
Vout = [5, 5, 5, 5, 5, 5];

voltage_ratio = Vout./Vin;

gain = 20.*log10(voltage_ratio);


semilogx(frequency, abs(gain), 'LineWidth', 2);
grid on;
set(gca, 'fontsize', 14);
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
title('Frequency Response');