function X = zeros_of_legPolyDeg10 

Ans = zeros(1,10);% instantiate an array that holds the roots for legendre polynomial of degree 10 

% since legendre polynomial of degree k has k distinct roots in the
% interval (-1,1), we split (-1,1) into 100 small sub sections and set one
% point in each sub section as the initial point when doing the newton's
% method

counter = 1;

for i = -1:0.02:1
    root = newtonMethod_legPolyDeg10(i);
    if ~ismember(root,Ans) %if the approximated root has not been included in the answer array
        Ans(counter) = root; %add that approximation to the answer array
        counter = counter + 1;
    end
end


X = Ans;

end
