clc,clear all;
f=@(x,y) -y+x+1;
y0=1;
h=0.1;
a=0;
b=1;
N=(b-a)/h;
[x1,y1]=odeEuler(f,y0,a,b,N)
[x2,y2]=trapzm(f,y0,a,b,N)
[x3,y3]=odegEuler(f,y0,a,b,N)
plot(x1,y1,'bo',x2,y2,'r*',x3,y3,'k-')
legend('欧拉公式','梯形公式','改进的欧拉公式')