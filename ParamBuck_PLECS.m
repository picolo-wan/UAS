%ikhwanteladan
%parameter system
vin = 12;
vo = 3.3;
R = 1.2;
fsw = 100e3;
perc_I = 20;
perc_V = 2;
Io=vo/R;
dI = (perc_I/100)*Io;
dV = (perc_V/100)*vo;

%duty cycle
D = vo/vin;
Ts = 1/fsw;

%inductance and capacitance
L = vo * (1 - D) / (dI * fsw);
C = vo * (1 - D) / (8 * dV * L * fsw^2);

% Kp and Ki
Fbp = fsw/20;     
Fbi = Fbp/10;    
Kp  = 2*pi*Fbp*C;
Ki  = 2*pi*Fbi*Kp;
