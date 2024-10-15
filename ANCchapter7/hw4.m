%% test
x1=4.4:0.01:4.5
y1=1./(cos(x1).^2)

syms x
f(x)=atan(x)
diff(f(x))

%% calculate
clc,clear all
x1=4.5;
x2=g(x1);
while abs(x2-x1)>eps
    x1=x2;
    x2=g(x1);
end
x2

function y=g(x)
y=atan(x)+pi;
end