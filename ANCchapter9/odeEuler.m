function [x,y]=odeEuler(f,y0,a,b,N)
h=(b-a)/N;
x=a:h:b;
y(1)=y0;
for n=1:N
    y(n+1)=y(n)+h*feval(f,x(n),y(n));
end