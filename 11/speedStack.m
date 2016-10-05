function [out2] = speedStack(len,inp)
    in2 = len;
    out2 = helper(len,inp,in2);
end

function [out2] = helper(len,inp,in2)
if len == 1
    if in2 > 1  
        pol = [];
        for k = 1:in2-1;
            pol = [pol ' '];
        end
        con = [pol inp pol];
        out2 = con;
    else
        out2 = inp ;   
    end  
else
    con = [];
    for i = 1:len;
        con = [con inp ' '];
    end
    con = con(1:end-1);

    if len < in2
        lop = [];
        diff = in2 - len;
        for j = 1:diff
            lop = [lop ' '];
        end
        con = [lop con lop] ;
    end
    [out2] = [helper(len-1,inp,in2); con];
end
end

        