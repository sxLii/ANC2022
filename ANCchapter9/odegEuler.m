function [x,y]=odegEuler(f,y0,a,b,N)
h=(b-a)/N;
x=a:h:b;
y(1)=y0;
for n=1:N
    yp=y(n)+h*feval(f,x(n),y(n));
    yc=y(n)+h*feval(f,x(n),yp);
    y(n+1)=0.5*(yp+yc);
end