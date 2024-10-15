% homework4.1+4.2
% written by LiShixun(ID:2230514)

clc,clear all;
%% HW4.1
% 传入数据
T=[0 10 20 30 40 80 90 95]';
s=[68.0 67.1 66.4 65.6 64.6 61.8 61.0 60.0]';
% 最小二乘拟合
z=polyfit(T,s,1);
% 绘图
a=z(1);b=z(2);
v=linspace(0,100,1000);
plot(T,s,'ro',v,a*v+b,'b-');
xlabel("温度T");
ylabel("表面张力s");
legend('实验数据点','s=aT+b')
legend('boxoff')


%% HW4.2
% 传入数据
t=[1953 1964 1982 1990 2000]';
p=[5.82 6.95 10.08 11.34 12.66]';
% 最小二乘拟合，右除号可以自动计算矛盾方程组
A=[ones(length(t),1),t,-p.*t];
z=A\p;
% 绘图
a=z(1);b=z(2);c=z(3);
v=linspace(1950,2010,1000);
plot(t,p,'ro',v,(a+b*v)./(1+c*v),'b-');
xlabel("年份x");
ylabel("人口y(亿)");
legend('实验数据点','y=(a+bx)/(1+cx)');
legend('boxoff');