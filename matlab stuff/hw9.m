close all; clear; clc; format short; format compact;

num=[1 2];
den=[1 -1 -0.5 -1/3];

zplane(num,den)
grid;
title('Zplane');