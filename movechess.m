function newchess=movechess(tempchess,thismove)
m=thismove;
chess=rot90(tempchess,m); % everything going down
%% move and add
for k=3:-1:1
    for i=3:-1:1
        for j=1:4
            if chess(i+1,j)~=0
                if chess(i+1,j)==chess(i,j)
                    chess(i+1,j)=chess(i+1,j)+1;
                    chess(i,j)=0;
                end
            else
                chess(i+1,j)=chess(i,j);
                chess(i,j)=0;
            end
            
        end
    end
end
%% move in new number
add_position=randperm(4);
%add_number=floor(rand()*2+1);
add_number=1;
for i=1:4
    if chess(1,add_position(i))==0
        chess(1,add_position(i))=add_number;
        break;
    end
end

newchess=rot90(chess,-m); % turn it back
end