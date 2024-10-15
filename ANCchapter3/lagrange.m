function p1=lagrange(x,y,intrp_x)
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
%   外循环计算每一个Li(x),内循环_并行_计算每一个插值基函数li(x),最后求和即可求得每一个p1
%   p1=l0(intrp_x0)*f(x0)-->p1=l0(intrp_x0)*f(x0)+l1(intrp_x0)*f(x1)-->p1=l0(intrp_x0)*f(x0)+l1(intrp_x0)*f(x1)+...
%   ...                     ...                                        ...
%   pn=l0(intrp_xn)*f(x0)-->pn=l0(intrp_xn)*f(x0)+l1(intrp_xn)*f(x1)-->pn=l0(intrp_xn)*f(x0)+l1(intrp_xn)*f(x1)+...
%
n=length(y);
p1=zeros(size(intrp_x));                                                    % 用于输出
for i=1:n                                                                   %计算Li(x)
    temp=ones(size(intrp_x));
    for j=[1:i-1 i+1:n]                                                     % 跳过i~=j, 计算li(intrp_xi)
        temp=temp.*(intrp_x-x(j))./(x(i)-x(j)); 
    end
    p1=p1+temp*y(i);                                                        % li(x) * f(x)
end
end