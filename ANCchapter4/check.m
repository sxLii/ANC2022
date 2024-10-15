clc,clear all;
%% prcatice4.3
% 一次最佳一致逼近
a0=sqrt(2)-1;
a1=(sqrt(2)*5+1)/8;
% 计算积分
fun=@(x) sqrt(1+x);
d0=integral(fun,0,1);% ans=2/3*(2^(3/2)-1)
d1=2/3;
d=[d0;d1];
A=[1 1/2;1/2 1/3];
a=A\d

%% pactice4.4
A=[1 1/2 1/3;1/2 1/3 1/4;1/3 1/4 1/5];
d=[2/pi;1/pi;1/pi-4/(pi^3)];
a=A\d;

%% practice4.8
A=[2 0; 0 3];
d=[2;1];
a=A\d;