clc,clear all
[x,iteration]=jacobi(3,5e-3)
%% Jacobi
function [x,iteration]=jacobi(n,tol)
% n为维数，tol为误差
A=ones(n,n);
D=diag([n+1:2*n]); %n*n
L=-tril(A,-1); %n*n
U=-triu(A,1); % n*n
A=D-L-U;
b=[1:n]'; %n*1
x=zeros(size(b)) % initialize x
for iteration=1:2000 % maxit=2000,default
    x=D\(L*x+U*x+b) % remember divide by'\' no '/'
    error=norm(b-A*x,2)/norm(b,2) % 2-norm to calculate error
    if error<tol
        break;
    end
end
end