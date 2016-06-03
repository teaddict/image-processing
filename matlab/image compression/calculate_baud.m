%baudrate
% Baud rate is defined as the number of bits transmitted per second. 
%bits : start and stop bit = 2
function [min] = calculate_baud(x,y,level,bits,modem,k)
min = ( (x*y*level) + (x*y*bits) ) / (modem*k*60);
end
