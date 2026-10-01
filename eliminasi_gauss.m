function eliminasi_gauss()

clc;
clear;

A = [2 1 -1;
     4 3 1;
    -2 1 2];

b = [3; 9; 4];
n = length(b);

% Forward Elimination
for k = 1:n-1
    for i = k+1:n
        m = A(i,k) / A(k,k);
        A(i,k:n) = A(i,k:n) - m * A(k,k:n);
        b(i) = b(i) - m * b(k);
    end
end

% Back Substitution
x = zeros(n,1);

for i = n:-1:1
    x(i) = (b(i) - A(i,i+1:n)*x(i+1:n)) / A(i,i);
end

disp('Hasil Eliminasi Gauss:');
disp(x);

end
