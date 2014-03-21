function y=chesscore(tempchess)
tempchess=log2(tempchess);
chess_max = max(tempchess(:));
chess_space = sum(sum((tempchess==0)));
chess_std = std2(tempchess);
t=[1,10,10];
y=[chess_max chess_space chess_std]*t';
if chess_space==0 
    y=0;
end

end
