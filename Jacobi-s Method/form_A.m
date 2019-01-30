function [A] = form_A(dimension)
% Using the below code to compose the symmatric matrix of dimensionality n
v = 1:dimension;
vv = meshgrid(v);
A = vv.^2 + (vv.').^2;
A = sqrt(A);
end

