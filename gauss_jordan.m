function gauss_jordan()

clc;
clear;

A = [2 1 -1;
     4 3 1;
    -2 1 2];

b = [3; 9; 4];

M = [A b];
n = length(b);

% Gauss-Jordan Elimination
for k = 1:n
    M(k,:) = M(k,:) / M(k,k);

    for i = 1:n
        if i ~= k
            faktor = M(i,k);
            M(i,:) = M(i,:) - faktor * M(k,:);
        end
    end
end

x = M(:,end);

disp('Hasil Gauss-Jordan:');
disp(x);

end
