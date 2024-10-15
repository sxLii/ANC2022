clc,clear all
format long;
fun=@(x) 4./(1+x.^2);
f1=integral(fun,0,1);
n=4;
f2=fsimpson(fun,0,1,n);
delta=abs(f2-f1);
while delta>1e-8
    n=n+1;
    f2=fsimpson(fun,0,1,n);
    delta=abs(f2-f1);
end
n,f2 % 7

function I=fsimpson(fun,a,b,n)
    h=(b-a)/n;
    x=linspace(a,b,2*n+1);
    y=feval(fun,x);
    I=h/6*(y(1)+2*sum(y(3:2:2*n-1))+4*sum(y(2:2:2*n))+y(2*n+1));
end