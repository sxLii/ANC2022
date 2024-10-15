clc,clear all
format long;
y=1900:10:1990;
p=[76.0 92.0 106.5 123.2 131.7 150.7 179.3 204.0 226.5 251.4];
% 2points
L2=diff(p)./diff(y);
rate2=L2./p(1:end-1)
% 3points
Lleft=(-3*p(1)+4*p(2)-p(3))/20; % 左边界点采用向后 差分
Lright=(p(end-2)-4*p(end-1)+3*p(end))/20; %右边界点采用向前差分
Lmid=(-p(1:end-2)+p(3:end))/20;% 中点采用中心差分格式
L3=[Lleft Lmid Lright];
rate3=L3./p