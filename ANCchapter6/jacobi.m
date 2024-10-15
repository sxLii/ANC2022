function [x,iter]=jacobi(A,b,tol)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1); % attention minus!!!
x=zeros(size(b));
for iter=1:2000
    xold=x;
    x=D\(L*x+U*x+b);
    error=norm(x-xold);
    if error<tol
        break;
    end
end
end