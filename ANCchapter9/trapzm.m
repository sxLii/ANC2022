function [x,y]=trapzm(f,y0,a,b,N)
h=(b-a)/N;
x=a:h:b;
y(1)=y0;
for n=1:N
    a0=y(n);
    while 1
        a1=y(n)+0.5*h*(feval(f,x(n),y(n))+feval(f,x(n+1),a0));
        if abs(a1-a0)<=1e-6
            break;
        end
        a0=a1;
    end
    y(n+1)=a1;
end