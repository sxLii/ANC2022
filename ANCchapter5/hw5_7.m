clc,clear all
warning off
n=[4 8 16 32];
hold on;
for i=1:4
    [x,U]=hw7(n(i));
    subplot(2,2,i)
    plot(x,U)
end
hold off;

function [x,U]=hw7(n)
    x=[linspace(0,1,n+1)]';
    y=((x.^2+1).^(3/2)-x.^3)/3;
    h=2/n;
    w=ones(n+1,1)*2/6;w(2:2:n)=4/6;w([1 n+1])=1/6;w=w*h;
    [X,S]=meshgrid(x); 
    % This MATLAB function returns 2-D grid coordinates based on the
    % coordinates contained in vectors x and y.
    A=(X.^2+S.^2).^(1/2); % A*diag(d)*x==y
    U=(A\y)./w;
    fprintf('%3d %13.6e %13.6f\n',n,cond(A),norm(U-x,"inf"));
end