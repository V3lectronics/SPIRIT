display("============== POWER ====================")
% https://www.ti.com/lit/ds/symlink/tps65023b.pdf?HQS=dis-dk-null-digikeymode-dsf-pf-null-wwe&ts=1770708443326#page=37&zoom=100,0,233
% equation 8

display("")
display("DCDC1 resistor divider")
R1 = 820000;
R2 = 182000;
V_DEFDCDCx = 0.6;
V_out = V_DEFDCDCx * ( ( R1+R2 ) / R2)

% comments: 
% V_in is set to 7V to take into account having 2 batteries connected in series to the charger (BQ257).

display("")
display("DCDC1 peak current")
% Peak to peak ripple current
V_out = 3.3;
V_in = 7;
L = 3.3 * 10^(-6);
f = 2.25 * 10^6;
deltaI_L = V_out * ( ( 1-(V_out/V_in) ) / ( L*f ) )

% Maximum inductor current
I_outmax = 1.6;
I_Lmax = I_outmax + deltaI_L/2

display("")
display("DCDC2 peak current")
% Peak to peak ripple current
V_out = 1.8;
V_in = 7;
L = 2.2 * 10^(-6);
f = 2.25 * 10^6;
deltaI_L = V_out * ( ( 1-(V_out/V_in) ) / ( L*f ) )

% Maximum inductor current
I_outmax = 0.8;
I_Lmax = I_outmax + deltaI_L/2

display("")
display("DCDC3 peak current")
% Peak to peak ripple current
V_out = 3.3;
V_in = 7;
L = 2.2 * 10^(-6);
f = 2.25 * 10^6;
deltaI_L = V_out * ( ( 1-(V_out/V_in) ) / ( L*f ) )

% Maximum inductor current
I_outmax = 0.8;
I_Lmax = I_outmax + deltaI_L/2
