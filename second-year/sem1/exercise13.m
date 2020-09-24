A = 21.0
dA = 2.0

B = 1.9
dB = 0.3

C = 38.0
dC = 8.0

D = 42.5
dD = 0.4

%A+C
W = A + C
dW = sqrt((dA^2)+(dC^2))
% W = 59 +- 8.2

%A*C + D
X = (A*C) + D
dX = sqrt((X*(sqrt((dA/A)^2)+((dC/C)^2)))^2+(dD^2))
% X = 841 +- 117

%A/C
Y = A/C
dY = Y*(sqrt(((dA/A)^2)+((dC/C)^2)))
%Y = 0.553 +- 0.128

%(AB)^1/2
Z = sqrt(A*B)
dZ = sqrt((((B*(A*B)^(-1/2))/2)*dA)^2+(((A*(A*B)^(-1/2))/2)*dB)^2)
%Z = 6.32 +- 0.58