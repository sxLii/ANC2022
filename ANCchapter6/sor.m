function [x,iter]=sor(A,b,omega,tol)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
x=zeros(size(b));
for iter=1:2000
    xold=x;
    x=(D-omega*L)\((1-omega)*D*x+omega*U*x+omega*b);
    error=norm(x-xold);
    if error<tol
        break;
    end
end
end