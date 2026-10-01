function dekomposisi_lu()

clc;
clear;

A = [2 1 -1;
     4 3 1;
    -2 1 2];

b = [3; 9; 4];
n = length(b);

% Dekomposisi LU metode Doolittle
L = zeros(n);
U = zeros(n);

for i = 1:n
    L(i,i) = 1;

    for j = i:n
        U(i,j) = A(i,j) - ...
            sum(L(i,1:i-1) .* U(1:i-1,j)');
    end

    for j = i+1:n
        L(j,i) = (A(j,i) - ...
            sum(L(j,1:i-1) .* U(1:i-1,i)')) / U(i,i);
    end
end

% Forward Substitution: Ly = b
y = L \ b;

% Backward Substitution: Ux = y
x = U \ y;

disp('Matriks L:');
disp(L);

disp('Matriks U:');
disp(U);

disp('Hasil Dekomposisi LU:');
disp(x);

end
