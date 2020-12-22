clc
close all;
clear all;
xn=input('Enter the sequence x(n)'); %Get the sequence from user
ln=length(xn); %find the length of the sequence
dftlength=input('Enter the length of fft');
%-------------------------------------------------------------
%code block to find the DFT of the sequence
%-----------------------------------------------------------
xk=fft(xn,dftlength);
%------------------------------------------------------------
%code block to plot the input sequence
%------------------------------------------------------------
subplot(2,2,1);
stem(xn);
ylabel ('x(n)');
xlabel ('n');
title('Input Sequence');
%---------------------------------------------------------------
%code block to plot the magnitude response
%------------------------------------------------------------
magnitude=abs(xk); % Find the magnitudes of individual DFT points
subplot(2,2,2);
stem(magnitude);
ylabel ('|X(k)|');
xlabel ('k');
title ('Magnitude Response');
%-------------------------------------------------
%Code block to plot the phase response
%-----------------------------------------------
phase=angle(xk) ;
subplot(2,2,3);
stem(phase);
ylabel ('<X(k)');
xlabel ('k');
title('Phase Response');
%------------------------------------------------------------
% Code block to find the IDFT of the sequence
%------------------------------------------------------------
xn=ifft(xk);
%------------------------------------------------------------
%code block to retrieve the original sequence
%------------------------------------------------------------
subplot(2,2,4);
stem(xn);
ylabel ('x(n)');
xlabel ('Time Index');
title('IDFT sequence');
