g = 9.81;
theta = (25/360)*2*pi;
velocity0 = 7.5;
t1 = 0.2
t2 = 0.4

velocityX = velocity0*cos(theta)
velocityY = velocity0*sin(theta)

%Total time in air
time = (2*velocityY)/g

%Work out heights
alt1 = velocityY*t1 - (g*t1^2)/2
alt2 = velocityY*t2 - (g*t2^2)/2
alt3 = velocityY*time - (g*time^2)/2

%Find distance
distance1 = sqrt(alt1^2 + (t1*velocityX)^2)
distance2 = sqrt(alt2^2 + (t2*velocityX)^2)
distance3 = sqrt(alt3^2 + (time*velocityX)^2)

%max altitude
altMax = velocityY*(time/2)-g*(time/2)^2/2