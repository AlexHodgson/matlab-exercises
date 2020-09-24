
n = 0;
d = 50;

while factorial(n)/10^d <= 1
    n = n + 1;
end

%reduce n as it is incrememted one extra time by the loop
highest_number = n-1