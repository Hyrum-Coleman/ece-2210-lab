% Hyrum Coleman u1365193
% 2/7/2023
% Plots voltage and current graphs
 
clc; clear; close all; 


resistance = [2, 10, 1000];
voltage = [4.8, 8, 9.6];
current = [2.4, .8, 0];

yyaxis left;
semilogx(resistance, voltage,'LineWidth',2); 
xlabel('Resistance (ohms)', 'FontSize',14); % label the x-axis
ylabel('Voltage (V)', 'FontSize', 14); % label the left-side y-axis

hold on

yyaxis right;
semilogx(resistance, current,'LineWidth',2);
ylabel('Current (mA)', 'FontSize', 14); 
title('Load Voltage / Current vs Load Resistance', 'FontSize',14);
legend('Voltage (V)', 'Current (mA)', 'FontSize', 14);
hold off


figure (2);
% multiply the voltage * current to find the power 
% dissipated by the load
% don't forget to convert the current to mA 
% first before multiplying!
power = current.*0.001.*voltage;
% plot the results
semilogx(resistance,power, 'LineWidth', 2) 
% add a title for your plot
title('Power Dissipated by the Load', 'FontSize',14);
xlabel('Resistance (ohms)', 'FontSize',14);
ylabel('Power (W)', 'FontSize', 14); % label the right-side y-axis
