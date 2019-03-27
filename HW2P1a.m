clc
clear all
close all
%Equation for first problem
syms y x
y=(x^4)-(4*x^3)+(8*x)+1;

dy=diff(y,x); %first derivative of y

cpy=double(solve(dy==0)) %critical points of y


ysol=(cpy.^4)-(4.*cpy.^3)+(8.*cpy)+1 %value of y at the critical points

ddy=diff(dy,x); %second derivative of y
ynat=(12.*cpy.^2-24.*cpy) %determining the nature of critical points


