close all;
clear all;
clc;

% Plotting function
[x,y] = meshgrid(pi/2:0.1:2*pi,pi/2:0.1:2*pi);
z = sin(x)+cos(y);

x0=[5.5,5.5;2,2];
for i=1:2

    init=x0(i,:);
    % Finding minimum(unconstrained)
options = optimoptions('fminunc','Display','iter','Algorithm','quasi-newton');
[xoptimal, optimal_cost] = fminunc(@hw2p3cf,init,options)


% Finding minimum (constrained)
options = optimoptions('fmincon','Display','iter','Algorithm','sqp');
[xoptimalc, optimal_costc] = fmincon(@hw2p3cf,init,[],[],[],[],[],[],@hw2p3c,options)


% Contour plot
figure;
contour(x,y,z);
title('Contour plot for intial point (5.5,5.5)');
hold on;
plot3(xoptimal(1),xoptimal(2),optimal_cost,'b*')
plot3(xoptimalc(1),xoptimalc(2),optimal_costc,'r*')
grid on;
%plotting line y=4
line([x(1) x(end)],[4 4],'Color','green','linestyle','--','lineWidth',1.5)
legend('Contour plot','Unconstrained','Constrained','Inequality');
hold off 
end


function cost = hw2p3cf(x)
    cost = sin(x(1))+ cos(x(2));
end

function [cineq, ceq] = hw2p3c(x)
    ceq = [];
    cineq = [];
    if x(2) < 4
        cineq = -1*(x(2)-4); 
    else
        cineq = 0;
    end
end