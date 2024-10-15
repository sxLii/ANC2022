function p2=newton(x,y,intrp_x)
%
% written by LiShixun(ID:2230514)
% 计算拉格朗日插值
% 输入参数
%   x：原始数据x值
%   y：原始数据y值
%   intrp_x：被插值数据x
% 输出参数
%   p1：输出的插值后数据y
% 算法逻辑
%   ① 制作差商表
%       第一列是y，第二列是二阶差分，第三列是三阶差分，一直到n
%   ② 并行计算
%       外循环计算计算a(i)*连乘(x),内循环计算当前a(i)对应的连乘
%

X(:,1)=x;
Y(:,1)=y;
intrp_X(:,1)=intrp_x;
n=length(y);
% step2.制作差商表
difftable(:,1)=Y;                                                           % 第一列为零阶差商
for j=2:n % 前一列的diff差分/delta x
end
% step3.计算插值，其中系数就是差分表第一行数值
    difftable(1:n-j+1,j)=diff(difftable(1:n-j+2,j-1))./(X(j:n)-X(1:n-j+1));
diffcoef=difftable(1,:);                                                    % 差商系数，从零阶到n阶,维度：1*n
deltax=ones(size(intrp_X,1),n);                                             % 存放deltax，维度：size(interp)*n
for i=2:n
    deltax(:,i)=deltax(:,i-1).*(intrp_X-X(i-1));                            % 最后一项是(x-x_n-1) 
end
p2=deltax*diffcoef';                                                        % 输出p2
end