% -------------------------------------------------------------
% Function Name:    DiffToOrig
% Description  :    Restores the original values from the difference 
%                   matrix          
% Date Modified:    11/23/19

function out = DiffToOrig3(mat)

[R, C, ~] = size(mat);
C = round(C / 3, 0);

temp = zeros(R, C, 3); 

temp(:, :, 1) = DiffToOrig(mat(1:R,1:C));
temp(:, :, 2) = DiffToOrig(mat(1:R,(C+1):(2*C)));
temp(:, :, 3) = DiffToOrig(mat(1:R,((2*C)+1):(3*C)));

out = uint8(temp(:,:,:));
end