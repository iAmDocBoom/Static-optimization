clc
clear all
close all
x0=[5.5,5.5]';
options = optimoptions('fminunc','Display','iter','Algorithm','quasi-newton');
[xopt,optimal_cost] = fminunc('hw2p2cf',x0,options)



