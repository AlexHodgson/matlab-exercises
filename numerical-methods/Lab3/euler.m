%Use euler method to solve ode

h = 10^(0); %Step size
k = 0.1; %Growth constant
time = [0:h:100];
x = [0:h:100];
analytic = [0:h:100];
x(1) = 10; %value at t=0

%Iterate over values of t and calculate next value of x
for n = 1:(length(time)-1)
    
    %Find gradient of line, then extrapolate
    dx = x(n) * k;
    x(n+1) = x(n) + (h * dx);
    
end

%Calculate analytical answers
for m = 1:length(analytic)
    
    analytic(m) = x(1) * exp(k * time(m));
    
end

%Find values at t = 46
time46 = find(time == 46);
x46 = x(time46)
e46 = analytic(time46)

%Plot the numerical and analytical solutions on a log graph
hold on
plot(time,x)
plot(time,analytic)
set(gca, 'YScale', 'log')
ylabel('Number of Bacteria')
xlabel('Time')
title('Analytical vs Numerical Models of Bacterial Growth, Step Size = 1')
legend('Numerical','Analytic')
hold off