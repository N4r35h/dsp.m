clc;
clear all;
close all;
x=input('Enter the sequence')
Rxx=xcorr(x); % Estimate its autocorrelation
subplot(2,1,1)
stem(x); % Plot the autocorrelation
title('Input Sequence');
xlabel('n');
ylabel('x(n)');
subplot(2,1,2); % Prepare the figure
stem(Rxx); % Plot the autocorrelation
title('Autocorrelation function of the Sequence');
xlabel('l');
ylabel('Rxx(l)');
