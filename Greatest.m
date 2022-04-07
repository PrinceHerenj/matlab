a = 100;
b = 200;
c = 300;
if(a > b)
    if(a > c)
        max = a;
    else
        max = c;
    end
else
    if(b > c)
        max = b;
    else
        max = c;
    end
end
max