x = dataset(:,1:4); 
k = 3;
centroids = datasample(x,k);
indices = zeros(size(x,1),1);
m = size(x,1);

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
    centroids(w,:) = (1/ck)*sum(xw) 
end

