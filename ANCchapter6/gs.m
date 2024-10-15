function [x,iter]=gs(A,b,tol)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
x=zeros(size(b));
for iter=1:2000
    xold=x;
    x=(D-L)\(U*x+b); % D->(D-L)
    error=norm(x-xold);
    if error<tol
        break;
    end
end
end