close all; clc; clear; format short; format compact;

num=[1 -2 1 -1];
den=[1 -3.5 3];
[r,p,k]=residue(num, den)