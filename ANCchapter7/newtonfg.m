function [x,it]=newtonfg(x0,f,g,maxit,tol)
% 保证运行
if nargin<5,tol=eps;
    if nargin<4,maxit=100;
        if nargin<3,g=@(x) 2*x+10*cos(10*x);
            if nargin<2,f=@(x) x.^2+sin(10*x)-1;
                if nargin <1 ,x0=30;
                end
            end
        end
    end
end
x1=x0;
d=-feval(f,x0)./feval(g,x0);
x2=x1+d;
it=0;
while abs(x1-x2)>=tol
    it=it+1;
    if it>=maxit
        break;
    end
    x1=x2;d=-feval(f,x1)./feval(g,x1);fx=feval(f,x1);
    isdone=0;lambda=1;
    while isdone==0
    xn=x1+lambda*d;
    fn=feval(f,xn);
    if abs(fn)<=abs(fx)
        isdone=1;
    else
        lambda=0.5*lambda;
        if lambda<=tol
            disp("misson fail");
            break;
        end
    end
    x2=xn;
    end
end
x=x2;
% % step1
% x=x0;
% fx=feval(f,x);
% flag=0;
% it=1;
% while ~flag
%     it=it+1;
%     % step2
%     if norm(fx)<=tol
%         disp(x);
%         fprintf("success");
%         flag=1;
%         return;
%     end
%     % step3
%     d=- feval(g,x)\fx; % g^(-1)*f
%     lambda=1;
%     lsdone=0;
%     % step4
%     while lsdone==0
%         xn=x+lambda*d;
%         fn=feval(f,xn);
%         if norm(fn)<norm(fx)
%             lsdone=1;% break out this loop, return to step5
%         else
%             lambda=0.5*lambda;
%             if lambda<=eps
%                 flag=-1;
%                 error('mission fail');
%             end
%         end
%     end
%     x=xn;
%     fx=fn;
%     % step5
%     if it>maxit
%         flag=0;
%         error('need more iterations')
%     end
% end