clc,clear all;
N=50;
a=1;
b=2;
y0=-1;
f=@(x,y) -1/(x^2)-y/x-y^2;
[x1,y1]=odeEuler(f,y0,a,b,N)
[x2,y2]=trapzm(f,y0,a,b,N)
[x3,y3]=odegEuler(f,y0,a,b,N)
[x4,y4]=rk4(f,y0,a,b,N);
plot(x1,y1,'bo',x2,y2,'r*',x3,y3,'k.',x4,y4,'p-')
legend('欧拉公式','梯形公式','改进的欧拉公式','四阶龙格-库塔')