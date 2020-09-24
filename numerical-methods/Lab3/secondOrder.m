%Script to model oscillation of a spring using the euler method

%Constants
k = 0.1; %spring constant
m = 0.1; %mass attached
h = 0.05; %step size

time = [0:h:100];
x = [0:h:100];
v = [0:h:100];
eTot = [0:h:100];

%Initial conditions
x(1) = 5;
v(1) = 0;



%use euler method to calculate position and velocity over time
for n = 1:(length(time) - 1)
     
     v(n+1)= v(n) + (h * (-1) * (k/m)*x(n));
     
     x(n+1) = x(n) + (h * v(n));
     
     %Calculate total system energy
     eTot(n) = (0.5 * k * (x(n)^2)) + (0.5 * m * (v(n)^2));
     
end

%plot system
plot(x)
hold on
plot(v)
plot(eTot)
xlabel('Time')
legend('Position','Velocity','Total Energy')
axis([0 100  -15 15])
title('Numerical model of oscillating spring')
hold off