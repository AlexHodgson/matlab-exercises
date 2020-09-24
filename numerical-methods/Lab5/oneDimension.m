%Diffusion of heat in 1d

%Constants
xmax = 41;
tmax = 400;
dx = 0.2 ;
dt = 0.01;
alpha = 1;
midpoint = 0;

%Discretise both space and time
xVals = 0:dx:xmax;
tVals = 0:dt:tmax;
heat = zeros(length(xVals),length(tVals));


%Calculate midpoint of the room
if rem(length(xVals),2) == 0
   
    midpoint = length(xVals)/2;
else
    
    midpoint = (length(xVals)-1)/2;
end

for m = 1 : length(tVals)
    
     heat(midpoint,m) = 20;
     %heat(length(xVals),m) = 20;
     %heat(1,m) = 20;
     %heat(midpoint,m) = 20-(m*20/length(tVals));
    
end

for n = 1:length(tVals)-1
    
   for j = 2:(length(xVals))-1 
        
       %For heat source at centre, don't calculate for the middle
        %if j ~= midpoint
            
            heat(j,n+1) = heat(j,n) + alpha*(dt/(dx^2))*(heat(j+1,n) - 2*heat(j,n) + heat(j-1,n));
        
        %end
   end
   
end

graphed1 = surf(tVals,xVals,heat);
set(graphed1,'LineStyle','none')

%plot(xVals,heat(:,length(tVals)))
%ylim([0 20])