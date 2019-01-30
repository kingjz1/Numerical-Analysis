function x = hw6_qn3_b
%We can view this question as solving a system matrix equation Ax=b

%Here are all the ten distinct roots
root1 = newtonMethod_legPolyDeg10(-0.96); %-0.9739
root2 = newtonMethod_legPolyDeg10(0.98); %0.9739
root3 = newtonMethod_legPolyDeg10(-0.9); %-0.8651
root4 = newtonMethod_legPolyDeg10(0.9); %0.8651
root5 = newtonMethod_legPolyDeg10(-0.04); %-0.1489
root6 = newtonMethod_legPolyDeg10(0.04); %0.1489
root7 = newtonMethod_legPolyDeg10(-0.74); %-0.6794
root8 = newtonMethod_legPolyDeg10(0.74); %0.6794
root9 = newtonMethod_legPolyDeg10(-0.44); %-0.4334
root10 = newtonMethod_legPolyDeg10(0.44); %0.4334

%Instantiate A
A = zeros(10,10);
%Populate A
for j=1:10
    A(j,1)=(root1)^(j-1);
    A(j,2)=(root2)^(j-1);
    A(j,3)=(root3)^(j-1);
    A(j,4)=(root4)^(j-1);
    A(j,5)=(root5)^(j-1);
    A(j,6)=(root6)^(j-1);
    A(j,7)=(root7)^(j-1);
    A(j,8)=(root8)^(j-1);
    A(j,9)=(root9)^(j-1);
    A(j,10)=(root10)^(j-1);
end

%Instantiate b
b = zeros(10,1);
%Populate B 
for i=1:10
    m = i-1;
    fct = @(x) x.^m;
    q = integral(fct,-1,1);
    b(i,1) = q;
end


format long;
x = A\b;




end

