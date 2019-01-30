function [X] = Jacobi(dimension)
%Using the below function to compose the symmatric matrix of dimensionality n
A = form_A(dimension);
%Set the tolerance
tol = 10^(-8);
fnorm = 1;
while (fnorm>tol)
    %Find the rotation
    R = find_R(A);
    %Compute the new A (next iteration of A)
    A = (R')*A*(R);
    D = diag(diag(A));
    OD = A-D;
    %Compute the sum of the squares of the off-diagonal elements of A
    fnorm = (norm(OD,'fro'))^2;
end

X = D;
end

