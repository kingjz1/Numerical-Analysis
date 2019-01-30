function X = newtonMethod_legPolyDeg10(initial) % initial represents the initial value that starts the newton method iterations
% Let's use Newton's method
x = initial;
% evaluate the value of degree 10 legendre polynomial when x = initial;ree 10
fx = (46189*x^10)/256 - (109395*x^8)/256 + (45045*x^6)/128 - (15015*x^4)/128 + (3465*x^2)/256 - 63/256; 
% r sets the stadnard of accuracy of Newton's method
r = 10^(-12);
d = 10; % A default value to make sure that the while loop will run the first time

    while ((d>r) || (abs(fx)>r))
        fxprime =  (230945*x^9)/128 - (109395*x^7)/32 + (135135*x^5)/64 - (15015*x^3)/32 + (3465*x)/128; %Taking derivative of f at point x
        xnew = x - ((fx)/(fxprime));%Get the next value according to Newton's method
        d = abs (xnew - x); %Calculating the difference between the old value and the new value
        x = xnew;
        fx = (46189*x^10)/256 - (109395*x^8)/256 + (45045*x^6)/128 - (15015*x^4)/128 + (3465*x^2)/256 - 63/256;
    end




X = x;



end
