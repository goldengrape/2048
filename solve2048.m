% automatic solve git.io/2048
% I hate this game, try to solve it by machine
clear all
close all
chess=2.^(reshape(randperm(16),4,4)<=2);
oldchess=chess;
for m=1:8000
    m
    for test=1:100
        predict_step=5;
        thismove=floor(rand(1,predict_step).*4+1);
        firstmove=thismove(1);
        testchess=chess;
        for step=1:predict_step
            testchess=movechess(testchess,thismove(step));
            testscore(step)=chesscore(testchess);
        end
        testresult(test,:)=[firstmove max(testscore)];
    end
    maxscore=0;
    for i=1:4
        meanscore(i)=(testresult(:,2)'*(testresult(:,1)==i))/(sum((testresult(:,1)==i)));
        if meanscore(i)>=maxscore
            maxscore=meanscore(i);
            bestmove(m)=i;
        end
    end
    if maxscore==0
        break;
    end
    nextchess=movechess(chess,bestmove(m));
    chess=nextchess;
end
displaychess(chess,bestmove(m))