R = 0.0001:0.0001:0.001;
I = 0.8;
V =(I.*R)
noise = rand(1,10)-0.5
Vnoise = V + noise/10000
plot(R,V)
%ylabel("Voltage/V")
%xlabel("Resistance/Ohms")
hold on
plot(R,Vnoise,'+')
hold off