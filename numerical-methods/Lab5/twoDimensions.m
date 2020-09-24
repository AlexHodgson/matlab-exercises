%Two dimensional diffusion of heat

%Constants
xmax = 41;
ymax = 41;
tmax = 20;
dx = 0.2 ;
dy = 0.2;
dt = 0.01;
alpha = 1;
midpoint = [0 0];

%Discretise both space and time
xVals = 0:dx:xmax;
yVals = 0:dy:ymax;
tVals = 0:dt:tmax;
heat2d = zeros(length(xVals),length(yVals),length(tVals));


%Calculate midpoint of the room in x
if rem(length(xVals),2) == 0
   
    midpoint(1) = length(xVals)/2;
else
    
    midpoint(1) = (length(xVals)-1)/2;
end

%And in y
if rem(length(yVals),2) == 0
       
    midpoint(2) = length(yVals)/2;
else
    
    midpoint(2) = (length(yVals)-1)/2;
end


%Set the centre of the room to 20
for m = 1 : length(tVals)
    
     %heat2d(midpoint(1),midpoint(2),m) = 20;
     
     %set boundaries to 20
     heat2d(length(xVals),:,:) = 20;
     heat2d(1,:,:) = 20;
     heat2d(:,length(yVals),:) = 20;
     heat2d(:,1,:) = 20;
     
     %heat2d(1,m) = 20;
     %heat2d(midpoint(1),midpoint(2),m) = 20-(m*20/(length(tVals)/2));
    
end

%Iterate t,x,y and calculate the diffusion of heat
for n = 1:length(tVals)-1
    
   for j = 2:length(xVals)-1 
       
       for k = 2:length(yVals)-1
            %The heat source at the centre is kept constant
           %if j ~= midpoint(1) | k~= midpoint(2)
            
                heat2d(j,k,n+1) = heat2d(j,k,n) + alpha*dt*(((heat2d(j+1,k,n) - 2*heat2d(j,k,n) + heat2d(j-1,k,n))/dx^2) + ((heat2d(j,k+1,n) - 2*heat2d(j,k,n) + heat2d(j,k-1,n))/dy^2));
            
        
           %end
       end
   end
end

graphed2 = surf(xVals,yVals,heat2d(:,:,18/dt));
% plot the function u as a surface.
%view(2);
% set the viewer to two dimensions for a top down grid.
zlim([0.01,20]);
% set the limits to between 0.01 and 10.
set(gca,'ZScale','log');
% set the z-axis to be logarithmic
set(graphed2,'LineStyle','none')
%Remove black grid lines

%plot(xVals,heat(:,length(tVals)))
%ylim([0 20])