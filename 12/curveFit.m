function curveFit(x,y,order)

subplot(2,2,1)
plot(x,y)
title('Original Data')

subplot(2,2,2)
p = polyfit(x,y,order)
y1 = polyval(p,x)
plot(x,y1)
title('Polynomial Fit')

subplot(2,2,3)
i = polyint(p)
y2 = polyval(i,x)
plot(x,y2)
title('Integral')

subplot(2,2,4)
d = polyder(p)
y3 = polyval(d,x)
plot(x,y3)
title('Derivative')