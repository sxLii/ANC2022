clc,clear all
A=[-55 -5 12;21 36 -13;24 7 47];
b=[41 52 12]';
ttol=1e-4; %10^-4
maxit=20000;
it=zeros(19,1);
xs=zeros(19,3);
for t=1:19
    omega=0.1*t;
    [x,iter]=sorhw2(A,b,omega,maxit,ttol);
    it(t)=iter;
    xs(t,:)=x';
end
it
[minit,ind]=min(it)
xxs=xs(ind,:)
%% sor
function [x,iter]=sorhw2(A,b,omega,maxit,ttol)
x=zeros(size(b));
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
iter=0;
while iter<maxit
    iter=iter+1;
    xold=x;
    x=(D-omega*L)\(omega*b+omega*U*x+(1-omega)*D*x);
    error=norm(x-xold);
    if(error<ttol)
        break;
    end
    if iter==maxit-1
        iter=inf;
        break;
    end
end
end