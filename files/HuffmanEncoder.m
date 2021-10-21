% -------------------------------------------------------------
% Function Name:    HuffmanEncode
% Description  :    Takes an input vector/matrix and outputs the
%                   Huffman codes based on the generated frequency
%                   table
% Date Modified:    11/19/19

function [codeTable, codeStream, codeLen] = HuffmanEncoder(inp)

%     inp = ceil(rand(100,100) * 255);
%     inp_cpy = inp;

    data_unique = double(unique(inp));
    prob = zeros(size(data_unique));
    [C,R] = size(inp);
    for i = 1:length(data_unique)
        for j = 1:R
            prob(i) = prob(i) + sum(data_unique(i) == inp(:,j));
        end
    end
    % {
    data_concat = [data_unique prob];

    prob_new = sort(data_concat(:,2), 'descend');
    prob_no_dup = flipud(unique(prob_new));

    new_sym = [];
    for i = 1:size(prob_no_dup)
        for j = 1:size(prob)
    %         i1 = i;
            if(prob_no_dup(i) == data_concat(j,2))
                new_sym = [new_sym;  data_concat(j,1)];
            end
        end
    end
    new_sym = [new_sym prob_new];

    symbols = new_sym(:,1);
    p = new_sym(:,2) ./ (R*C);

    [codeTable, codeLen] = huffmandict(symbols,p);
    
    inp = inp';
    
    codeStream = huffmanenco(inp(:), codeTable);

end