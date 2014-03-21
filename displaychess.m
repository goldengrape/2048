function displaychess(chess,bestmoves)
for i=1:size(bestmoves,2)
    step=i
    chess=movechess(chess,bestmoves(i));
    display=chess.*(chess~=1)
end
end