clc;
clear all;
close all;
n=input('enter the desired length of the sequence');
time=-n:n;
r=1:1:n;
ramp=[zeros(1,n+1) r];
disp(ramp);
stem(time,ramp);
xlabel('time index');
ylabel('amplitude');
title('unit ramp signal');
