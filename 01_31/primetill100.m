for i=(2:100)
    for j=(2:100)
        if(~mod (i,j))
            break;
        end
    end
    if(j>(i/j))
        fprintf('%d prime \n',i);
    end
end