%least square regression to fit a straight line


xdata = [1,3,5,7,10,12,13,16,18,20];
ydata = [4,5,6,5,8,7,6,9,12,11];

n = length(xdata)

xsum = sum(xdata)
ysum = sum(ydata)

xmean = mean(xdata)
ymean = mean(ydata)

xsquared = sumsq(xdata)
xiyi = xdata.*ydata
sumxiyi = sum(xiyi)

a1 = ((n*sumxiyi)-(xsum*ysum)) / ((n*xsquared)-(xsum^2))

a0 = ymean - (a1*xmean)
