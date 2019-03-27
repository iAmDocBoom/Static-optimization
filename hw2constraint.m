function [cineq, ceq] = hw2constraint(x)
ceq = [];
if x(1)+x(2)>0
    cineq=0;
else
    cineq=x(2)>4;
end
end