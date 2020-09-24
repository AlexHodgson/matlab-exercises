%Had to create 5 v variables, rather than a matrix, as there are a different number of measurements
%for each u
u = [718.0, 675.5, 532.5,473.0,415.5];
v1 = [411.0,412.5,414.5,416.0,414.0] ;
v2 = [422.5,420.0,421.0,420.0,422.5];
v3 = [492.0,488.0,490.5,489.5,490.0,488.0];
v4 = [553.5,551.0,552.5,555.5,554.0];
v5 = [631.0,628.5,630.0];

f = 1:length(u);
error = 1:length(u);

%call the focal length function
[f(1),error(1)] = focalLength(u(1),v1);
[f(2),error(2)] = focalLength(u(2),v2);
[f(3),error(3)] = focalLength(u(3),v3);
[f(4),error(4)] = focalLength(u(4),v4);
[f(5),error(5)] = focalLength(u(5),v5)

fBest = 0;
num = 0;
denom = 0;
sum = 0;

for i = 1:length(u)
    num = num + (f(i)/error(i)^2); % top of the fbest equation
    denom = denom + (1/error(i)^2);  %bottom of the fbest equation
    sum = sum + 1/(error(i)^2); % adds up the errors
end

fBest = num/denom
errorBest = sum^(-1/2)
