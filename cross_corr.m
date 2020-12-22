clc;
clear all;
close all;
x=input('Enter the first sequence');
y=input('Enter the Second sequence');
Rxy=xcorr(x,y);
subplot(3,1,1)
stem(x);
title('First Input Sequence');
xlabel('n');
ylabel('x(n)');
subplot(3,1,2)
stem(y);
title('Second Input Sequence');
xlabel('n');
ylabel('y(n)');
subplot(3,1,3);
stem(Rxy);
title('Cross Correlation function of the Sequence');
xlabel('l');
ylabel('Rxy(l)');
