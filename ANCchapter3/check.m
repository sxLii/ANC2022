%% execrise3.1
clc,clear all;
format long; % 显示多位小数 
x=[0.70 0.71];
y1=[0.6442176872 0.6518337710];
y2=[0.7648421872 0.7583618759];
ans1=lagrange(x,y1,0.705)
ans2=lagrange(x,y2,0.702)

%% execrise3.2
clc,clear all;
format long; % 显示多位小数
x=[0 1 2 4 6];
y=[1 9 23 3 259];

n=length(y);
difftable(:,1)=y;
% 制作差商表：
for j=2:n
    numerator=diff(difftable(1:n-j+2,j-1));
    denominator=(x(j:n)-x(1:n-j+1))';
    difftable(1:n-j+1,j)=numerator./denominator;
end
ans=newton(x,y,4.2)

%% execrise3.13
clc,clear all;
format long; % 显示多位小数
x=[1 2 3 4 5];
y=[0 0 1 0 1 0 0];
pp=csape(x,y,'second');
pp.coefs