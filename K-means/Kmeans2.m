x =dataset(:,1:4);
m = size(x,1);
d3 = zeros(10,1);
indices = zeros(size(x,1),1);
for k=1:10
    centroids = datasample(x,k);
    for i=1:m
    z=1; 
   min_dist = sum((x(i,:)-centroids(1,:)).^2);
   for j=2:k
       dist= sum((x(i,:)-centroids(j,:)).^2);
       if dist < min_dist
           min_dist = dist;
           z=j;
       end
   end
   indices(i)=z;
end
    
for w=1:k
    xw = x(indices==w,:);
    ck = size(xw,1);
    centroids(w,:) = (1/ck)*sum(xw); 
    d(w,1)=(1/ck)*sum((xw(:)-centroids(w,1)).^2);
end
d2(k,1) = (1/k)*sum(d(:));
end
plot(d2(:,1));