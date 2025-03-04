%Obtaining frequency response plots from the system function
%via freqz%Ex: H(z)= z/(z - 0.9)
%

num=[1 1];             %numerator coefficients
den=[1 -0.9];    %denominator coefficients
%Evaluate frequency response (over 0 - pi) at N=512 points
%The frequency response vector is H (complex valued)
%The vector of frequency values  is W
[H,W]=freqz(num, den, 512);
gain=abs(H);           %magnitude response
phase=angle(H);        %Phase response
f = W/(2*pi);
subplot(2,1,1), plot(f,gain), title('Magnitude response'), 
xlabel('frequency(cycles/sample)')
grid
ylabel('gain')
subplot(2,1,2), plot(f,phase), title('Phase response'), 
xlabel('frequency(cycles/sample)')
grid
ylabel('phase (rad)')