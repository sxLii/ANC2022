%% example2.2.3(page:46)
a=[-1,-2,-3];
b=[2,3,4,5];
c=[-1,-2,-3];
d=[6,1,-2,1];
x=zgf(a,b,c,d)

%% practise1(page:56)
n=101;
a=ones(n-1,1);
b=12*ones(n,1);
c=ones(n-1,1);
d=[11,10*ones(1,n-2),11];% 注意这里要用列矩阵
x=zgf(a,b,c,d)