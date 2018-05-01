clear all 
clear memory 
load train_data.mat
load train_label.mat
N = length(unique(train_data(:,1)));
total_classes = 20 ; 
for c = 1: total_classes
    N_c(c,1) = length(find(train_label ==c));
end
prior  = N_c./N;
Nc=total_classes;
N_c=max(train_data(:,2));
count=zeros(Nc,N_c);
for n=1:size(train_data,1),
train_data(n,1)=train_label(train_data(n,1));
end
for n=1:size(train_data,1),
count(train_data(n,1),train_data(n,2))=count(train_data(n,1),train_data(n,2))+train_data(n,3);
end
dev=sum(count')+N_c;
P=log(bsxfun(@rdivide,count+1,dev'));
save training_multiNB.mat

