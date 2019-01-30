function X = find_kth_legendre(k)

syms x;
p_n1 = 1;
p_n2 = x;

if k==0
    X = p_n1;
elseif k==1
    X = p_n2;
else
    for i = 2:k
        p_n3 = ((2*i-1)/i)*(p_n2)*(x) - ((i-1)/i)*(p_n1);
        p_n1 = p_n2;
        p_n2 = p_n3;
    end
    X = simplify(p_n3);
end

