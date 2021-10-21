% -------------------------------------------------------------
% Function Name:    DiffToOrig
% Description  :    Restores the original values from the difference 
%                   matrix          
% Date Modified:    11/23/19

function out = DiffToOrig(mat)

[R, C] = size(mat);
diff = zeros(R, C);

for i = 1:R
    if(i == 1)
        diff(i, 1) = mat(i, 1);
        for j = 2:C
            diff(i,j) = mat(i,j) + diff(i,j-1);
        end
    elseif (mod(i, 2) == 0)
        diff(i,C) = mat(i,C) + diff(i-1,C);
        for j = C-1:-1:1
            diff(i,j) = mat(i,j) + diff(i,j+1);
        end
    else
        diff(i,1) = mat(i,1) + diff(i-1,1);
        for j = 2:C
            diff(i,j) = mat(i,j) + diff(i,j-1);
        end
    end
end

out = diff;

end