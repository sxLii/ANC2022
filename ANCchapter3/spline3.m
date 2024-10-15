% homework3.5
% written by LiShixun(ID:2230514)
% 内容：三次样条分别对龙格函数进行40阶插值多项式
clc,clear all;
% 数据
n=41;
x=linspace(-5,5,n);
y=1./(x.^2+1);
intrp_x=linspace(-5,5,80); % 插入的新值

% 第一边界条件：前后自动补0
subplot(3,1,1);
y1=[5/338 y -5/338];
temp1=csape(x,y1,'complete');
p1=ppval(temp1,intrp_x);
draw(x,y,intrp_x,p1);
title('第一边界条件');
[breaks1,coefs1,npoly1,ncoefs1,dim1]=unmkpp(temp1);

% 第二边界条件：前后自动补0
subplot(3,1,2);
y2=[5/338 y -5/338];
temp2=csape(x,y2,'second');
p2=ppval(temp2,intrp_x);
draw(x,y,intrp_x,p2);
title('第二边界条件');
[breaks2,coefs2,npoly2,ncoefs2,dim2]=unmkpp(temp2);

% 第三边界条件
subplot(3,1,3);
temp3=csape(x,y,'periodic');
p3=ppval(temp3,intrp_x);
draw(x,y,intrp_x,p3);
title('第三边界条件');
[breaks3,coefs3,npoly3,ncoefs3,dim3]=unmkpp(temp3);
