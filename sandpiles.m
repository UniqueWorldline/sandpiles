clear, clc, close all

all_threes = 3*ones(3);
identity = [ 2 1 2; 1 0 1; 2 1 2 ];

% 3:16 in video example of addition without toppling
crit = 3;
A = [1 2 0; 2 1 1; 0 1 3];
B = [2 1 3; 1 0 1; 0 1 0];

C = topple(A+B,crit)

% 3:26 in video example of addition with toppling
crit = 3;
A = [2 2 0; 2 1 1; 0 1 3];
B = [2 1 3; 1 0 1; 0 1 0];

C = topple(A+B,crit)

% 8:34 in video example of addition with toppling
crit = 3;
A = 3*ones(3);
B = zeros(3);
B(2,2) = 1;

C = topple(A+B,crit)

% Find all 2s
crit = 3;
B = [1 3 1; 3 3 3; 1 3 1];
all_2s = topple(all_threes+B, crit)

% Demonstrate the identity matrix
is_all_2s = topple(all_2s+identity, crit)

% Prove the identity added to itself topples to the identity
is_identity = topple(identity+identity, crit)

% 'Minus all_threes'
is_identity = topple(all_threes + [3 3 3; 3 1 3; 3 3 3], crit);

% Giant Toppling
crit = 80;
side_length = 501; % Must be odd
A = zeros(side_length);
A((side_length+1)/2,(side_length+1)/2) = 30*side_length^2;
C = topple(A, crit);
num_sand_grains = sum(sum(C))
imagesc(C)
imshow(C/max(max(C)))
save('C')

