function [N] = neighbors(A,crit)
%NEIGHBORS returns number of spilled grains from neighbors
%   [N] = NEIGHBORS(A,CRIT) returns the number of spilled grains from
%   neighbors of each cell in an array the same size as the gameboard. The
%   entry in the ith row and jth column of N is the number of grains added
%   to the ith row and jth column of A during a toppling.

N = zeros(size(A));
N(A > crit) = A(A > crit);
N = conv2(floor(N / 4), [0 1 0; 1 0 1; 0 1 0], 'same');

% num_r = size(A, 1);
% num_c = size(A, 2);
% N = zeros(size(A));
% 
% [row,col] = find(A>crit);
% 
% for i = 1:length(row) % For each pile with more than 3 grains
%     
%     n = floor(A(row(i),col(i))/4); % # toppled grains to neighbors
%     
%     if row(i) == 1 && col(i) == 1 % If critical pile is top left corner
%         N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         % N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         % N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down
%         
%     elseif row(i) == 1 && col(i) == num_c % Top right corner
%         % N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         % N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down
%         
%     elseif row(i) == num_r && col(i) == 1 % bottom left corner
%         N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         % N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         % N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down
%         
%     elseif row(i) == num_r && col(i) == num_c % bottom right corner
%         % N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         % N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down
%         
%     elseif row(i) == 1 % top edge 
%         N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         % N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down  
%         
%     elseif row(i) == num_r % bottom edge
%         N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         % N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down  
%         
%     elseif col(i) == 1 % Left edge
%         N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         % N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down  
%         
%     elseif col(i) == num_c % Right edge
%         % N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down   
%         
%     elseif row(i) ~= 1 && row(i) ~= num_r % Middle entry
%         N(row(i),col(i)+1) = N(row(i),col(i)+1) + n; % right
%         N(row(i),col(i)-1) = N(row(i),col(i)-1) + n; % left
%         N(row(i)-1,col(i)) = N(row(i)-1,col(i)) + n; % up
%         N(row(i)+1,col(i)) = N(row(i)+1,col(i)) + n; % down   
%         
%     end
%         
% end

end

