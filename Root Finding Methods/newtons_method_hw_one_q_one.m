function x = newtons_method_hw_one_q_one (a, p)
    
% a is the starting point of each iteration
% p sets the stadnard of accuracy (Let p = 10^(-12) when running the fuction)

da = 10; % A default value to make sure that the while loop will run the first time
fa=(a^5)-(3*(a^2))+1;% function value of a

    while ((da>p) || (abs(fa)>p))
        faprime =  (5*(a^4))-(6*a);%Taking derivative of f at point a
        anew = a - ((fa)/(faprime));%Get the next value according to Newton's method
        da = abs (anew - a); %Calculating the difference between the old value and the new value
        a = anew;
        fa=(a^5)-(3*(a^2))+1;
    end
    
    x = a;
end

