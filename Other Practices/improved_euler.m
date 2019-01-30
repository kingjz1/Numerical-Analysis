%h = step size
%y0 = initial value of function at initial t
%t0 = initial t value
%tN = end t value
function improved_euler(h,y0,t0,tN)

yk = y0;
tk = t0;
fprintf('Estimation at t=%.1f: %10.4f \n',tk,y0);

for x = t0+h:h:tN
    ykplus1 = yk + (h./2).*(tk.*(exp(-yk)) + (tk)./(1+(tk.^2)) + (tk+h).*(exp (- (yk+h.*(tk.*(exp(-yk)) +tk./(1+tk.^2))))) + (tk+h)./(1+((tk+h).^2)));
    yk = ykplus1;
    tk = tk + h;
    fprintf('Estimation at t=%.1f: %10.4f \n',tk,yk);
end
end

