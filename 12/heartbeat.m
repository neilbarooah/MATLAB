function [area condition] = heartbeat(x,y,normal)
y = abs(y)
area = abs(trapz(y,x))
if area < min(normal)
    condition = 'Low Blood Pressure'
elseif area > max(normal)
    condition = 'High Blood Pressure'
else
    condition = 'Normal Blood Pressure'
end