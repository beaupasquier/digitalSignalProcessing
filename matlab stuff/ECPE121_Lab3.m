close all; clc; clear; format compact; format short;

A = [1 -3.6019 4.977 -3.1184 0.747];
B = [0.0327 -0.1055 0.1488 -0.1055 0.0327];
%% Part 1
% n = 0:19;
[h,n] = impz(B,A);
stem(n,h)
hold on;
title('Part1 Impulse');
xlabel('n');
ylabel('y(n)');
[s,n] = stepz(B,A);
figure;
stem(n,s)
title('Part1 Step');
xlabel('n');
ylabel('y(n)');
% The DC gain of this system is 0.86
%% Part 2

figure;
C = [1 -2.3804 2.5694 -1.3315 0.3367];
D = [0.457 -1.6958 2.4838 -1.6958 0.457];
[h,n] = impz(D,C);
stem(n,h)
hold on;
title('Part2 Impulse');
xlabel('n');
ylabel('y(n)');
[s,n] = stepz(D,C);
figure;
stem(n,s)
title('Part2 Step');
xlabel('n');
ylabel('y(n)');
% The DC gain of this system is 0.032
%% Part 3

[k,Fs] = audioread('Kalimba.mp3');
soundsc(k,Fs)
pause(8);
clear sound;
%% Part 4

prompt = 'Please enter a (0) for original sound, (1) for system1, or (2) for system2: ';
u = input(prompt);
if (u==0)
    soundsc(k,Fs)
    pause(8);
    clear sound;
end

y = filter (B,A,k);  %filter output

if (u==1)
    soundsc(y,Fs)
    pause(8);
    clear sound;
end

y = filter (D,C,k);  %filter output

if (u==2)
    soundsc(y,Fs)
    pause(8);
    clear sound;
end

%   The first system makes the music very low pitched, so it must be a Low-
%   Pass Filter. The second system seems to be a High-Pass Filter because
%   it does not have any low pitched tones.