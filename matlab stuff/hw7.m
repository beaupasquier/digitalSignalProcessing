close all; clc; clear; format compact; format short;

% a=[1];
% b=[1 0.9];
% n=linspace(-pi,pi,1000);
% x=2*cos(0.5*pi*n+0.1)+2*cos(0.983*pi*n+0.1);
% subplot(2,1,1)
% stem(x,n)

B = [1 0.9]; %coefficents of RHS
A = 1;
%Create sinusoid of frequency 2pi/3
n = linspace(-pi,pi);
x=2*cos(0.5*pi*n+0.1)+2*cos(0.983*pi*n+0.1);
y = filter (B,A,x);  %filter output
stem(n,y)
grid
xlabel('n')
title('Output')
