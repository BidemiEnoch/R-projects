
file=read.csv("r-project/csvfiles/test1.csv");
file
attach(file)
#lm computes the regression
data=lm(Y~X,file);
#fetching the intercept and the slope
c=coef(data)[1];
m=coef(data)[2];
paste("Y=",m,"*X +",c);
plot(file,pch=16,col = "black",main = "Regression model of Y on X");
abline(data);
cor(file);
#since the correlation coefficient is 0.9973253, it means there is a high positive relationship between the Potential difference(X) and the variable resistor(Y)
paste("when X is 8, Y is ",m*8+c)
paste("when X is 9, Y is ",m*9+c)
paste("when X is 10, Y is ",m*10+c)
paste("when X is 11, Y is ",m*11+c)

