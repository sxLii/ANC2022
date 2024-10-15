%% homework 5.5
clc,clear all
format long;
fun=@(x) exp(x);
f1=ftrapz(fun,0,1,4);
f2=fsimpson(fun,0,1,4);
f3=exp(1)-1;
deltaf1=f3-f1;
deltaf2=f3-f2;

%% homework 5.8
clc,clear all
format long;
x1=0.5555556*(1/(0.7745967+2)+1/(2-0.7745967))+0.5*0.8888889
x2=0.2369269*(1/(0.9061798+2)+1/(2-0.9061798))+0.4786287*(1/(0.5384693+2)+1/(2-0.5384693))+0.5*0.5688889

%% homework 5.9
clc,clear all
fun=@(x) 1./sqrt(1+x.^2)
f4=fqbxf(fun,4)
deltaf4=f4-2.62205755429213
%% funtion
function I=ftrapz(fun,a,b,n)
    h=(b-a)/n;
    x=linspace(a,b,n+1);
    y=feval(fun,x);
    I=h/2*(y(1)+2*sum(y(2:n))+y(n+1));
end

function I=fsimpson(fun,a,b,n)
    h=(b-a)/n;
    x=linspace(a,b,2*n+1);
    y=feval(fun,x);
    I=h/6*(y(1)+2*sum(y(3:2:2*n-1))+4*sum(y(2:2:2*n))+y(2*n+1));
end

function I=fqbxf(fun,n)
    t=1:2:2*n+1;
    x=cos(t/(2*(n+1))*pi);
    y=feval(fun,x);
    I=pi/(n+1)*sum(y);
end











