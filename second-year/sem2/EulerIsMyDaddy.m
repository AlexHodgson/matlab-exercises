dx = 0.01;
x = 0:dx:2*pi;
y = sin(x);
dy = 0:dx:2*pi;

for i = 2:1:length(x)-1
        dy(i) = (y(i+1) -y(i-1))/(x(i+1)-x(i-1));
end
%approximate the first and last points as equal to the adjacent ones
dy(1) = dy(2);
dy(length(dy)) = dy(length(dy)-1);

hold on
plot(x,y,'.')
plot(x,dy)
hold off