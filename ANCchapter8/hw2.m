clc,clear all;
A=[2 0 0;2 2 1;1 1 2];
v0=[1 1 1]';
l0=max(abs(v0));
u0=v0./l0;

% calculate
l=l0;lold=inf;v=v0;u=u0;
while abs(1/l-1/lold) >1e-4
    lold=l;
    v=A\u;
    l=max(abs(v));
    u=v./l;
end
1/l,u