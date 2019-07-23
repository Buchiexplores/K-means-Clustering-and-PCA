function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for i = length(X)
    k1 = find (idx == 1);
    k2 = find (idx == 2);
    k3 = find (idx == 3);
end

val1 = zeros(length(k1), n);
val2 = zeros(length(k2), n);
val3 = zeros(length(k3), n);

for j = 1:length(k1)
    val1(j,:) =((X(k1(j),:)));
end
centroids(1,:) = (sum(val1))/length(k1);
for p = 1:length(k2)
    val2(p,:) =((X(k2(p),:)));
end
centroids(2,:) = (sum(val2))/length(k2);
for q = 1:length(k3)
    val3(q,:) =((X(k3(q),:)));
end
centroids(3,:) = (sum(val3))/length(k3);



% =============================================================


end

