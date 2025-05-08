clear all; close all;
a  =arduino('COM3', 'uno');
stop=false
while(~stop)
    stop=readDigitalPin(a, 'D6');
    x=readVoltage(a, 'A1')
    if(x>2.7)
        writeDigitalPin(a, 'D2', 1);
        pause (4.5)
        writeDigitalPin(a, 'D2', 0);
    elseif(x<2.7)
        writeDigitalPin(a, 'D2', 0);
    end
end
      