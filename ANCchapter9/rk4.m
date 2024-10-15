function [x,y]=rk4(f,y0,a,b,N)
h=(b-a)/N;
x=a:h:b;
y(1)=y0;
for n=1:N
    k1=h*feval(f,x(n),y(n));
    k2=h*feval(f,x(n)+0.5*h,y(n)+0.5*k1);
    k3=h*feval(f,x(n)+0.5*h,y(n)+0.5*k2);
    k4=h*feval(f,x(n)+h,y(n)+k3);
    y(n+1)=y(n)+(k1+k2+k3+k4)/6;
end