points = 5000;
count = 0;
a = 1
b = 0.5

%scatter points and see if they lie under the curve
for i = 1 : points
    x = a*rand(1);
    y = b*rand(1);
    if ((x^2)/(a^2)+(y^2)/(b^2)) < 1
        count = count + 1;
    end
end
quadrant = count/points*(a*b); %area in one quadrant
total = quadrant*4 %total area