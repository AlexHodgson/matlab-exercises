
k = 5;


for a = 0:0.01:2*pi
    plot(cos(k*a)*cos(a),cos(k*a)*sin(a),'.')
    %use hold as the points are being plotted one at a time
    hold on
end
hold off