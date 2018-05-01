function [predict,val] = prediction(X,theta,a)
val = X*theta;
for i=1:a
if val(i)>=0 & val(i)<1.5
    predict(i)=1;
else if val(i)>=1.5 & val(i)<2.5
        predict(i)=2;
    else
        predict(i)=3;
    end
end
end
end
