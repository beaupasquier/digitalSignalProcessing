close all; clear; clc; format short; format compact;

n = linspace(0,50);
a1 = 0.95;
a2 = 0.85;
hn = a1.^n;
xn = a2.^n;
y = conv(hn,xn);
m = 0:198;
stem(m,y);
hold on;
title('# 23');
xlabel('n');
ylabel('y(n)');