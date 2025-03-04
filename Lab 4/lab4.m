num=[0.0327 -0.1055 .1488 -.1055 .0327];%numerator coefficients
den=[1 -3.6019 4.977 -3.1184 0.747];    %denominator coefficients

[H,W]=freqz(num, den, 512);
r1 = roots(num);
r2 = roots(den);
zplane(r1,r2);
figure
gain=abs(H);           %magnitude response
f = W/(2*pi);
plot(f,gain), title('Magnitude response'), 
xlabel('frequency(cycles/sample)')
grid
ylabel('gain')