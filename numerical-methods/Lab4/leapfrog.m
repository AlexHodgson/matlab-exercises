%Solving PDE with staggered leapfrog method

xmin = 0;
xmax = 60;
dx = 0.2;
tmax = 20;
dt =  0.002;
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


for x = 2 : length(xVals)-1
    %Use upwind for t=2
    u(x,2) = u(x,1) - v*(dt/dx)*(u(x,1) - u(x-1,1));
end

for t = 2 : length(tVals)-1
    %Plot Gaussian Distribution at t=0
    
    %u(x,2) = A*exp(-(xVals(x) - x0 - v*0)^2/(2*d^2));
    for x = 2 : length(xVals)-1 
       %Iterate through time using staggered leapfrog
        u(x,t+1) = u(x,t-1) - v*(dt/dx)*(u(x+1,t) - u(x-1,t));
        
    end
    
end

%Calculate analytic solution
analytic = zeros(length(xVals),length(tVals));

for m = 1:length(xVals)
    
    for i = length(tVals)
        
        analytic(m,i) = A*exp(-(xVals(m) - x0 - v*tVals(i))^2/(2*d^2));
        
    end
end

%Plot surface, removing grid lines
% graphed = surf(tVals,xVals,u);
% set(graphed,'LineStyle','none')

hold on
plot(xVals,u(:,length(tVals)))
plot(xVals,analytic(:,length(tVals)))
hold off