%Solving PDE with upwind method

xmin = 0;
xmax = 60;
dx = 0.2;
tmax = 20;
dt =  0.1;
A = 10;
v = 2;
d = 1.5;
x0 = 10;

%Discretise both space and time
xVals = xmin:dx:xmax;
tVals = 0:dt:tmax;

%Create matrix to store values of function u(x,t)
u = zeros(length(xVals),length(tVals));

%Plot Gaussian Distribution at t=0
u(:,1) = A*exp((-(xVals-x0).^2)/(2*d^2));

for n = 1 : length(tVals)-1
    
    for j = 2 : length(xVals)
       %Iterate through time using upwind method
        u(j,n+1) = u(j,n) - v*(dt/dx)*(u(j,n) - u(j-1,n));
        
    end
    
end

%Calculate analytic solution
analytic = zeros(length(xVals),length(tVals));

for m = 1:length(xVals)
    
    for i = length(tVals)
        
        analytic(m,i) = A*exp(-(xVals(m) - x0 - v*tVals(i))^2/(2*d^2));
        
    end
end


hold on
plot(xVals,u(:,length(tVals)))
plot(xVals,analytic(:,length(tVals)))
hold off

%Plot surface, removing grid lines

% graphed = surf(tVals,xVals,u);
% set(graphed,'LineStyle','none')


