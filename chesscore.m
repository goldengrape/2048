function y=chesscore(tempchess)
tempchess=(tempchess);
chess_max = max(tempchess(:));
chess_space = sum(sum((tempchess==0)));
% chess_std = std2(tempchess);
chess_std=0;
chess_position_sum=sum((tempchess(:)-sort(tempchess(:))).^2);
t=[0,20,0,1];
y=[chess_max chess_space chess_std chess_position_sum]*t';
if chess_space==0 
    y=0;
end

end
