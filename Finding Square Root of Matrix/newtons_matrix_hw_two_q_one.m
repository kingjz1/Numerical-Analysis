function x = newtons_matrix_hw_two_q_one (A)
% A is the matrix whose root we are trying to find

X = [1 0 0 0; 0 1 0 0; 0 0 1 0;0 0 0 1]; % The default starting matrix when using the Newton's method to find the root
dX = 10; % Default value so that the while loop will start running
fX= X*X-A; % The function for solving square root of matrix A
iteration = 0; % The initial iteration number

fprintf(' # of iterations    Absolute Difference (Calculated by norm infinity)\n')
fprintf('  ----            -------- \n')  
fprintf('%4i           %10.4f \n', iteration, 0)

    while ((dX>(10^(-10)))) % when the absolute difference between elements of successive iterations is more than 10^(-10).
        iteration = iteration + 1; 
        fAprime =  2*X ; 
        Xnew = X - ((fX)/(fAprime)); % calculate the new estimated matrix square root
        dX = norm((Xnew - X),Inf); % calculate the absolute difference between two iterations
        X = Xnew; 
        fX= X*X-A;
        fprintf('%4i           %10.4f \n',iteration,dX)
    end
    

disp('The square root of the matrix A is:')
x = X; 


end

