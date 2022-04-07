a = 20;
b = 30;
switch(a)
    case (20)
        fprintf('This is the part of outer switch\n')
        switch(b)
            case (30)
                fprintf('This is the part of inner switch\n')
        end
end
        