num=[.18 0 .18];%numerator coefficients
den=[1 0 -.64];    %denominator coefficients

[H,W]=freqz(num, den, 8142);
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
figure

%train noise
load train
N=length(y);
Y = fft(y);
Y=abs(Y); %magnitude of FFT
%Plot the magnitude spectrum
%Use data cursor to determine peak locations
stem(0:N-1, Y)
%pass signal thru filter 
z = filter(num,den,y);
soundsc(z,Fs);