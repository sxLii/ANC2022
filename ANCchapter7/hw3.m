clc,clear all
x1=2;
x2=g(x1);
while abs(x2-x1)>eps
    x1=x2;
    x2=g(x1);
end
x2

function y=g(x)
y=(2*x+2)^(1/3);
end