function x = newtons_method_hw_one_q_two (a, p)
% a is the starting point of each iteration
% p sets the stadnard of accuracy (Use 10^(-12) when running the program) 

da = 2; % A default value so that the while loop will run
fa= a^3; % The function
iteration = 0; % The initial iteration number
afixed = 0; %The real root of F(x)=x^3
aerror = abs(afixed - a); %|The true root - the estimated root|
fprintf('    #       x       change of x     f(x)    error   (current_error)/(previous_error)\n')
fprintf('  ----  --------  ----------  ---------  -------  -------------------\n')  
fprintf('%4i %10.4f %10.4f %10.4f %10.4f %10.4f\n',iteration,a, 0 ,fa,aerror,0)

    while ((da>p) || (abs(fa)>p) )
        iteration = iteration + 1;
        faprime =  3*(a^2); 
        anew = a - ((fa)/(faprime));% calculate the new estimated root 
        da = abs (anew - a); 
        a = anew;
        fa=a^3;
        olderror = aerror; %record the previous error
        aerror = abs(afixed - a);%compute the new error
        ratio = aerror/(olderror);%calculate the ratio
        fprintf('%4i %10.4f %10.4f %10.4f %10.4f %10.4f\n',iteration,a,da,fa,aerror,ratio)
    end
    
    
end


