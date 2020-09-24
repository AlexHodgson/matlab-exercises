function [  ] = rlc( r,l,c )
%
freqRes = 1/sqrt(l*c);
damp = r/(2*l);
freq = sqrt(freqRes^2 + damp^2);
t = 0:0.5:100; %time in 0.5 sec intervals from 0-100s

 I = zeros(1,length(t)); % placeholder for current

for i = 1:length(t)

I(i) = exp((-1)*damp*t(i))*sin(freq*t(i));

end

plot(t,I)

