clc
clear all

x0 = 1.0;
options = optimoptions('fminunc','Display','iter','Algorithm','quasi-newton');
[xoptimal, optimal_cost] = fminunc('hw2p1cf',x0,options)
