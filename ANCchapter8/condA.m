function c=condA(n)
if nargin <1
    n=10;
end
a=2*ones(n,1);
b=-1*ones(n-1,1);
A=diag(a,0)+diag(b,-1)+diag(b,1)

% initialize
v0=rand(size(A,1),1) % 这里一定要用随机数，用全1矩阵算不出最大特征值
l0=max(abs(v0));
u0=v0./l0;
% calculate loop of lambda max
l=l0;lold=inf;v=v0;u=u0;
while abs(l-lold) >1e-10
    lold=l;
    v=A*u;
    l=max(abs(v));
    u=v./l;
end
lmax=l;
% calculate loop of lambda min
l=l0;lold=inf;v=v0;u=u0;
while abs(1/l-1/lold) >1e-10
    lold=l;
    v=A\u;
    l=max(abs(v));
    u=v./l;
end
lmin=1/l;
c=lmax/lmin;
end