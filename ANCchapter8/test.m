n=6
a=2*ones(n,1);
b=-1*ones(n-1,1);
A=diag(a,0)+diag(b,-1)+diag(b,1)
cond(A,2)
[v,d]=eig(A)