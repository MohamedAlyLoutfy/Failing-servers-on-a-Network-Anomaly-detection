function [mu sigma2] = estimateGaussian(X)

[m, n] = size(X);

mu = zeros(n, 1);
sigma2 = zeros(n, 1);


for i=1:n
  
  mu(i)=1/m*(sum(X(:,i)));
end

for j=1:n
   l=zeros(m, 1);
   l=X(:,j)-mu(j);
   l=l.^2;
   sigma2(j)=(1/m)*sum(l);
   
end










end
