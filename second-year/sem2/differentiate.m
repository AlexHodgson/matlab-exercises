%task 6
function [ dy ] = differentiate( m )
%Differentiates a matrix m, with two columns of length n. Returns the differentials in
%another matrix of size n x 1
% differentiate the 2nd column with respect to the 1st
x = m(:,1);
y = m(:,2);

dy = 1:length(x);

%praise euler
for i = 2:1:length(x)-1
        dy(i) = (y(i+1) -y(i-1))/(x(i+1)-x(i-1));
end
%approximate the first and last points
dy(1) = dy(2);
dy(length(dy)) = dy(length(dy)-1);

%plot function and differentiate function 
hold on
plot(x,y,'.')
plot(x,dy,'.')
hold off