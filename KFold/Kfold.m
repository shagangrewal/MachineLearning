%k-fold cross validation
k=5;
z=length(Y);
n=length(X)/k;
x=X(:,2:end);
accuracy=zeros(k,1);
indices = crossvalind('kfold',Y,k);
for i=1:k
    a=0;
    test = (indices == i);
    train = ~test;
    t=pinv(x(train,:)'*x(train,:))*x(train,:)'*Y(train);
    y=(x(test,:)*t);
    
    for j=1:n
        if y(j)<1.5
            y(j)=1;
        else if y(j)>=1.5 & y(j)<2.5
                y(j)=2;
            else if y(j)>2.5
                    y(j)=3;
                end
            end
        end
    end
    o=Y(test);
    for l=1:n
        if y(l)==o(l)
            a=a+1;
        end
    accuracy(i)=a/n;
    end
    mean(accuracy)     
end


            