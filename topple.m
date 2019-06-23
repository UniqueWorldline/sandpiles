function [A] = topple(A,crit)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


while nnz(A > crit)     %much more fficient than a recursion
    N = neighbors(A, crit);
    A(A > crit) = mod(A(A > crit), 4);
    if nnz(A < 0)
        A
        error('Negative elements in A')
    end
    
    A = A + N;
end

% N = neighbors(A,crit);
% A1 = A;
% 
% [row,col] = find(A>crit);
% for i = 1:length(row)
%     n = floor(A(row(i),col(i))/4); % # toppled grains to neighbors
%     A1(row(i),col(i)) = A(row(i),col(i)) - 4*n;
% end
% 
% A1 = A1 + N;
% 
% if nnz(A1>crit)
%     A1 = topple(A1,crit);
% else
%     return
end
