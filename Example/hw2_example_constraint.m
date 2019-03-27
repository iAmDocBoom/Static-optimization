function [cineq, ceq] = hw2_example_constraint(x)
    ceq = [];
    if x(1) > 0
        cineq = 0;
    else
        cineq = -x(1);
    end
    %cineq = [];
end

