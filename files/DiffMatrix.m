% -------------------------------------------------------------
% Function Name:    DiffMatrix
% Description  :    Calculates the difference matrix of the input 
%                   vector / matrix          
% Date Modified:    11/19/19

function out = DiffMatrix(mat)

[R, C] = size(mat);
diff = zeros(R, C);

for i = 1:R
    if(i == 1)
        diff(i, 1) = mat(i, 1);
        diff(i, 2:C) = mat(i, 2:C) - mat(i, 1:C-1);
    elseif (mod(i, 2) == 0)
        diff(i,C) = mat(i,C) - mat(i-1,C);
        diff(i, 1:C-1) = mat(i, 1:C-1) - mat(i, 2:C);
    else
        diff(i,1) = mat(i,1) - mat(i-1,1);
        diff(i, 2:C) = mat(i, 2:C) - mat(i, 1:C-1);
    end
end

out = diff;

end