function x = bisection_method_hw_one_q_one (a, b, p)

% a and b are the initial values of the bisection, we find a mid point c
% between a and b 
% p is the decimal accuracy that we want (Let p = 10^(-1) when running the
% function)

fa=(a^5)-(3*(a^2))+1;
fb=(b^5)-(3*(b^2))+1;
c=(a+b)/2;
fc=(c^5)-(3*(c^2))+1;

if (fa)*(fb) >= 0
    if fa == 0
       x = a;
    elseif fb == 0
       x = b;
    else 
       disp("Sorry, bisection method can't be used.")
    end   
elseif (abs(a-b) < p && (abs(fc)<p)) 
    x = c;
else 
    if fa*fc<0
        x = bisection_method_hw_one_q_one (a, c, p);
        % Do a recursion to let the fuciton keep calling bisection method
    elseif fb*fc<0
        x = bisection_method_hw_one_q_one (b, c, p);
        % Do a recursion to let the fuciton keep calling bisection method
    else
        if fc == 0
           x = c;
        end
    end
end


