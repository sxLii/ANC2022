clc,clear all;
f=@(x) [(x(1)-2)^2+(x(2)-3+2*x(1))^2-5
    2*(x(1)-3)^2+(x(2)/3)^2-4];
g=@(x) [2*(x(1)-3)^2+4*(x(2)-3+2*x(1)) 2*(x(2)-3+2*x(1))
    4*(x(1)-3) 2*x(2)/3]; % jacobi matrix
x1=[3,2]';
x2=x1-g(x1)\f(x1); %x-g^(-1)*f
it=1;
while norm(x2-x1)>eps
    it=it+1;
    x1=x2;
    x2=x1-g(x1)\f(x1);
end
x2
