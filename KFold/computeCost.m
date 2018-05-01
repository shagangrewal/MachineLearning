function J = computeCost(X , Y, theta)
m=length(Y);
J=0;
J=sum((X*theta-Y).^2)/(2*m);
end
