Q = 5.0*10^-5;
e = 8.854*10^-12;
r = 0:0.001:0.1;

plot(r,-Q./(r*4*pi*e))
xlabel("Seperation/m")
ylabel("Electric Potential/V")
title("Electric Potential against charge seperation")