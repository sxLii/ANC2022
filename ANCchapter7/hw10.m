%%
syms x
y=solve(9*x^2-16*x-8)
y=double(y)
x1=[y [3 4]']
f1=3.*(x1.^3)-8.*(x1.^2)-8.*x1-11
%%
clc,clear all
x1=3.5;
x2=g(x1);
while abs(x2-x1)>eps
    x1=x2;
    x2=g(x1);
end
x2

function y=g(x)
y=x-(3*(x^3)-8*(x^2)-8*x-11)./(9*(x^2)-16*x-8);
end