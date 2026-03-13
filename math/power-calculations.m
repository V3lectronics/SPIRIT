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

display("")
display("LOWBAT_SNS divider")
V_BAT_target = 3.2
V_SNS = 1; %comparator triggers at 1V
R1 = 1000 * 10^3; %(VBAT to SNS)
R2 = 470 * 10^3; %(GND to SNS)

% original equation: V_SNS = V_BAT * R2/(R1+R2)
V_BAT = 1/ ( ( R2/(R1+R2) ) / V_SNS )

display("")
display("PWRSAIL_SNS divider")
V_BAT_target = 2.5
V_SNS = 1; %comparator triggers at 1V
R1 = 680 * 10^3; %(VBAT to SNS)
R2 = 470 * 10^3; %(GND to SNS)

% original equation: V_SNS = V_BAT * R2/(R1+R2)
V_BAT = 1/ ( ( R2/(R1+R2) ) / V_SNS )

display("")
display("main power trace thickness to BQ25792 external")

% For IPC-2221 internal layers: k = 0.024, b = 0.44, c = 0.725
% For IPC-2221 external layers: k = 0.048, b = 0.44, c = 0.725
% Where k, b, and c are constants resulting from curve fitting to the IPC-2221 curves.

current_A = 5; %system can draw much more but this should be prevented
thickness_oz = 1;
T_rise = 60;
T_ambient = 20;
T_length = 27;

k = 0.048;
b = 0.44;
c = 0.725;

area = ( current_A / (k * T_rise^b) ) ^ (1/c);
width_mils = area / (thickness_oz * 1.378)
width_mm = width_mils * 0.0254





