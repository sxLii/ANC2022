clc,clear all
format long;
w=[5 8 5]/9;
t=[-sqrt(15) 0 sqrt(15)]/9;
fun=@(x) 4./(1+x.^2);
f1=integral(fun,0,1);
n=3;
f2=fglegendre(fun,w,t,0,1,n);
delta=f2-f1;
while delta>1e-8
    n=n+1;
    f2=fglegendre(fun,w,t,0,1,n);
    delta=abs(f2-f1);
end
n,f2 %2401

function f=fglegendre(fun,w,t,a,b,n)
    h=(b-a)/n;
    f=0;
    for i=0:n-1
        gp=h/2+(a+i*h)+h/2*t;
        f=f+fun(gp)*w'*h/2;
    end
end
