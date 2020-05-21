%Script for plotting normal distributions for
%two different sample sizes N1 and N2.
N1 = 1;
A0 = 0;
A1 = 1;
sigma1 = 1;
x  = [-3:0.01:3];
y1 = normpdf(x,A0,sigma1^2);
y2 = normpdf(x,A1,sigma1^2);

N2 = 3; %New sample size
sigma2 = sigma1/sqrt(N2);
y3 = normpdf(x,A0,sigma2^2);
y4 = normpdf(x,A1,sigma2^2);

subplot(2,1,1);
grid on
hold on
plot(x,y1);
plot(x,y2);
title('N = 1');

subplot(2,1,2);
grid on 
hold on
plot(x,y3);
plot(x,y4);
title('N = 9');
