g = 9.81;
theta = (25/360)*2*pi;
velocity0 = 7.5;
t1 = 0.2
t2 = 0.4

velocityX0 = velocity0*cos(theta)
velocityY0 = velocity0*sin(theta)

%Total time in air
time = (2*velocityY0)/g
t = 0:1/99:time



%position at time t
alt = velocityY0.*t - (g.*t.^2)/2
length = velocityX0.*t

%V at time t
Vx = velocityX0
Vy = velocityY0 - t.*g

%speed
Speed = (Vx^2 + Vy.^2).^(1/2)

subplot(2,2,1)
plot(t,length)
xlabel("time/s")
ylabel("Horizontal distance/m")
subplot(2,2,2)
plot(t,alt)
xlabel("time/s")
ylabel("Height/m")
subplot(2,2,3)
plot(t,Speed)
xlabel("time/s")
ylabel("Speed(m/s)")
subplot(2,2,4)
plot(length,alt)
xlabel("Horizontal Distance/m")
ylabel("Height/m")



