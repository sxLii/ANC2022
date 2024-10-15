function x=zgf(a,b,c,d)
%
% written by LiShixun(ID:2230514)
% 求解Ax=d，其中A为三对角矩阵:
% A=[b1,c1,...              ]
%   [a2,b2,c2...            ]
%   [  ,a3,b3,c3,...        ]
%   [    .  .  .            ]
%   [      .  .  .          ]
%   [    ...,an-1,bn-1,cn-1 ]
%   [         ...,an  ,bn   ]
% d=[d1,d2,...,dn]'
%
% 算法逻辑：根据通项公式迭代计算L->y->U三个矩阵，最后由Ux=y求解x
%
n=length(b);% A的阶数n
% 1. 计算首项
l(1)=b(1);y(1)=d(1)./l(1);u(1)=c(1)./l(1);
% 2. 迭代
for i=2:n
    l(i)=b(i)-a(i-1).*u(i-1);
    y(i)=(d(i)-y(i-1).*a(i-1))./l(i);
    if(i~=n) % u只计算至n-1
        u(i)=c(i)./l(i);
    end
end
% 3. 求解x:从底而上
x(n)=y(n);
for i=n-1:-1:1
    x(i)=y(i)-u(i)*x(i+1);
end
