clc,clear all;
A=[3 -4 3;-4 6 3;3 3 1];
v0=[1 1 1]';
l0=max(abs(v0));
u0=v0./l0;

% calculate
l=l0;lold=inf;v=v0;u=u0;
while abs(l-lold) >1e-4
    lold=l;
    v=A*u;
    [tmp,ind]=max(abs(v));
    l=v(ind);
    u=v./l;
end
l,u