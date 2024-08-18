
in = 127;
out = "";
out2 = 0;
count = 0;
while in > 0
    
    tmp = mod(in, 2);
    if tmp == 1
        %out = "1" + out;
        out2 = out2 + 10^count;
        in = in - 1;
    %else
        %out = "0" + out;
    end
    count = count + 1;
    in = in / 2;
end
out
out2