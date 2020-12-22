clc;
clear all;
close all;
x=input('Enter the input 1 sequence: ');
h=input('Enter the input 2 sequence: ');
L=length(x);
M=length(h);
maxv=max(L,M)
y=cconv(x,h,maxv); % “conv” inbuilt command used for convolution operation
%------- To plot input 1 sequence-----------%
subplot(3,1,1);
stem(x);
title('Input 1 sequence');
xlabel('n');
ylabel('x(n)');
%------- To plot input 2 sequence-----------%
subplot(3,1,2);
stem(h);
title('Input 2 sequence');
xlabel('n');
ylabel('h(n)');
%------- To plot output sequence-----------%
subplot(3,1,3);
stem(y);
title('Circular convolution sequence');
xlabel('n');
ylabel('y(n)');
