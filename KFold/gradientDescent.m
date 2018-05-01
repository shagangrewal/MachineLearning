function [theta , cost] =  gradientDescent(X, Y, theta, alpha, numiters)
m = length(Y);
n = length(theta);
tempval = theta;
cost = 0;
for iter= 1:numiters
   temp = (X*theta-Y);
    for i=1:n
        tempval(i,1)=sum(temp.*X(:,i));
    end
    theta=theta-(alpha*tempval)/m;
    cost = computeCost(X,Y,theta);
end
end

        