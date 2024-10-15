% draw the picture
function draw(x,y,intrp_x,p)
hold on;
scatter(x,y,'o')
plot(intrp_x,p,'r*-',intrp_x,1./(intrp_x.^2+1),'b--');
legend('原始数据','插值数据');
xlabel('x');
ylabel('f(x)');
hold off;
end