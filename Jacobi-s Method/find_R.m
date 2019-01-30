function [R] = find_R(A)
%Find the rotation
%D is the diagonal matrix of A
D = diag(diag(A));
%OD is the off-diagonal matrix of A
OD = A-D;
%Find the largest absolute element in OD 
%Return the index of the largest absolute off-diagonal element 
[p,q]=find(max(max(abs(OD))) == abs(OD),1);
%Instantiate the rotation matrix
R = eye(size(A));
%Solve for phi
phi = (1/2)*( atan( 2*(A(p,q)) / (A(q,q)-A(p,p)) ) );
%Fill in the rotation matrix
R(p,q)=sin(phi); 
R(q,p)=-sin(phi);
R(p,p)=cos(phi);
R(q,q)=cos(phi);
end

