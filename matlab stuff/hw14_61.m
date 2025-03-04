close all; clc; clear; format compact; format short;

t=(0:499)*pi/500;
f1='abs(0.56*exp(j*t)./((exp(j*t)-(0.56*j+0.56))*(exp(j*t)-(-0.56*j+0.56))))';
f2='angle(0.56*exp(j*t)./((exp(j*t)-(0.56*j+0.56))*(exp(j*t)-(-0.56*j+0.56))))';
range=[-pi pi];
subplot(2,1,1), fplot(f1, range)
grid;
xlabel('Frequency (Rad/Sample)'), ylabel('Gain')
title('System Magnitude Response');
subplot(2,1,2), fplot(f2, range)
grid;
xlabel('Frequency (Rad/Sample)'), ylabel('Phase (Rad)')
title('System Phase Response');
