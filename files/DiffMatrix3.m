% -------------------------------------------------------------
% Function Name:    DiffMatrix
% Description  :    Calculates the difference matrix of the input 
%                   m x n x d image          
% Date Modified:    11/19

function out = DiffMatrix3(mat)

mat_R = mat(:,:,1);
mat_G = mat(:,:,2);
mat_B = mat(:,:,3);
diff_R = DiffMatrix(mat_R);
diff_G = DiffMatrix(mat_G);
diff_B = DiffMatrix(mat_B);

out = [diff_R diff_G diff_B];

end