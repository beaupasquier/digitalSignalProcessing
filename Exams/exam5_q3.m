N = 10;
n = 0:N-1;
x = [1,1,1,1,0,0,0,0,0,0];
num = [1 0 0];
den = [1 -.8 .64];

y = filter (num,den,x);

stem(n,y);
ylabel('Output y(n)');
xlabel('Sample (n)');

title('Question 3 Matlab');

