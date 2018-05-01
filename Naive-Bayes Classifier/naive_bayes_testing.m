clear all 
load test_data.mat
load test_label.mat
N_w=max(test_data(:,2));
N_vector=max(test_data(:,1))
count_result=zeros(N_vector,N_w);
for n=1:size(test_data,1),
count_result(test_data(n,1),test_data(n,2))=count_result(test_data(n,1),test_data(n,2))+test_data(n,3);
end
 load training_multiNB.mat
count_result1 = count_result(:,1:size(count,2)); 
 result=P*count_result1'+ log(prior*ones(1,size(count_result,1))) ;
 [~,class]=max(result);
 Accuracy  = ((length(find((test_label - class')==0)))/(size(test_label,1)))
 
