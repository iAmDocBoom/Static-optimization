clear
%% First define function and display
x = [-3:0.1:3];
y = (x + 1).* (x + 1) + 1;
plot(x,y,'k-');grid

%% Next find unconstrained minimum 
x0 = 3;
options = optimoptions('fminunc','Display','iter','Algorithm','quasi-newton');
[xoptimal, optimal_cost] = fminunc('hw2_example_cost',x0,options)

%% Finally, find constrained minimum if x > 0
% Algorithm types include sqp, active-set, and trust-region-reflective
lb = -3; ub = 4;
x0 = 3;
options = optimoptions('fmincon','Display','iter','Algorithm','sqp');
[xoptimalc, optimal_costc] = fmincon('hw2_example_cost',x0,[],[],[],[],lb,ub,'hw2_example_constraint',options)