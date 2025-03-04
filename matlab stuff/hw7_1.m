close all; clc; clear; format compact; format short;

%Frequency response of the system y(n)=x(n)-x(n-3)
f1 = 'abst(1-exp(-j*3*))'    %Function to be plotted in string format
f2 = 'angle(1-exp(-j*3*t))'
range = [-pi pi];            %Range over which to plot the function
subplot(2,1,1), fplot(f1, range)
grid
xlabel('frequency (rad/sample)'), ylabel('gain')
title('system magnitude response')
subplot(2,1,2), fplot(f2, range)
grid
xlabel('frequency (rad/sample)'), ylabel('phase (rad)')
title('system phase response')
