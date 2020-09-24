%Use RK4 to solve an ode

h = 10^(0); %Step size
growth = 0.1; %Growth constant
time = [0:h:100];
x = [0:h:100];
analytic = [0:h:100];
x(1) = 10; %value at t=0

%Iterate over values of t and calculate next value of x
for n = 1:(length(time)-1)
    
    %Calculate the RK coefficients
    k1 = h*(x(n) * growth);
    
    k2 = h*((x(n) + k1/2) * growth);
    
    k3 = h*((x(n) + k2/2) * growth);
    
    k4 = h*((x(n) + k3) * growth);
    
    %Add them in correct proportions to get next x
    x(n+1) = x(n) + (k1 /6) + (k2 /3) + (k3 /3) + (k4 /6);
    
end

%Calculate analytical answers
for m = 1:length(analytic)
    
    analytic(m) = x(1) * exp(growth * time(m));
    
end

time46 = find(time == 46);
x46 = x(time46)
e46 = analytic(time46)

hold on
plot(time,x)
plot(time,analytic)
set(gca, 'YScale', 'log')
ylabel('Number of Bacteria')
xlabel('Time')
title('Analytical vs Numerical Models of Bacterial Growth, Step Size = 1')
legend('Numerical','Analytic')
hold off