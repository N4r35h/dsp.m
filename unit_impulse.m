clc; % To clear the Screen
clear all; % To clear all the previous variables.
close all; % To close all the previous windows
n=input('Enter desired length of the sequence:'); % input statement is used to feed the input value
time=-n:n; % variable allocation
impulse=[zeros(1,n) 1 zeros(1,n)]; % impulse generation
disp(impulse); % To display the impulse output
stem(time, impulse); % To plot the Discrete signal
xlabel('time index'); % labeling the x axis
ylabel('amplitude'); % labeling the y axis.
title('Generation of Unit impulse signal');
