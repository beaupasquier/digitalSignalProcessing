num=[.175 0 -.175];%numerator coefficients
den=[1 -1 .5];    %denominator coefficients

[H,W]=freqz(num, den, 16000);
r1 = roots(num);
r2 = roots(den);
zplane(r1,r2);
figure
hold on
gain=abs(H);           %magnitude response
f = 16*W/(2*pi);
plot(f,gain), title('Magnitude response'),
xlabel('frequency(kHz)')
grid
ylabel('gain')
hold off