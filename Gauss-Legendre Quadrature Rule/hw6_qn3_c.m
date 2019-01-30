function x = hw6_qn3_c

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

%w contains the weight 
w = hw6_qn3_b;

fprintf('    True Value      Approximated Value\n');
fprintf('    ----------      ------------------\n');



for i=1:20
    %Evaluate the true value
    m = i-1;
    fct = @(x) x.^m;
    q = integral(fct,-1,1);
    
    A = zeros(1,10);
    
    A(1)=(root1)^m;
    A(2)=(root2)^m;
    A(3)=(root3)^m;
    A(4)=(root4)^m;
    A(5)=(root5)^m;
    A(6)=(root6)^m;
    A(7)=(root7)^m;
    A(8)=(root8)^m;
    A(9)=(root9)^m;
    A(10)=(root10)^m;
    
    approx = dot(A,w);
    
    fprintf('%10.12f         %10.12f\n', q, approx)
end


end

