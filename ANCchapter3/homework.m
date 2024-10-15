% homework3.3+3.4
% written by LiShixun(ID:2230514)
% 内容：拉格朗日、牛顿、intrp1、三次样条分别对龙格函数进行20阶插值多项式
clc,clear all;
% 数据
n=21;
%x=linspace(-5,5,n)'; %一定要记得转置
x=5*cos(pi/(n-1)*(0:n-1)');
y=1./(x.^2+1);
intrp_x=linspace(-5,5,80); % 插入的新值

% 拉格朗日插值 
subplot(3,1,1);
p1=lagrange(x,y,intrp_x);
draw(x,y,intrp_x,p1);
title('拉格朗日插值');

% 牛顿插值
subplot(3,1,2);
p2=newton(x,y,intrp_x);
draw(x,y,intrp_x,p2);
title('牛顿插值');

% matlab内置插值：分段线性插值
subplot(3,1,3);
p3=interp1(x,y,intrp_x);
draw(x,y,intrp_x,p3);
title('分段线性插值');




