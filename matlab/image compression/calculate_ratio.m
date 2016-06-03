%compression ratio

function [ratio] = calculate_ratio(x,y,level,bits)
ratio = x*y*(level/bits);
end
