%%%%%%%%%%%%%%%%%%%%%
%INPUT PARAMATERS 
%%%%%%%%%%%%%%%%%
%Reference:NuScale Final Safety Analysis - NuScale Core %Design 
clear all;
clc;

number_pin=11^2-11;%[-]
number_assembly=37;%[-]
number_tg=11;%[-]
number_rods=11;%[-]
radius_tube=0.3600/100;%[m]
thickness_gap=0.00008255;%[m]
thickness_clad=0.0006096;%[m]
thickness_oxidus=25*10^-6;%[m]
radius_fuel=0.2908/100;%[m]
pitch=0.00922275;%[m]
mass_rate=587;%[kg/s]
Tm_in=531.2610;%[ºK]
Tm_out=587.7060;%[ºK]
Temperature_fuel=700;%[K]
eq_diameter=1.51;%[m]
Pressure_in=128.439;%[bar]
extrapolated_distance=0.2047;%[m]
percent_down_mass=1.00;

core_length=17.800;%[m]
core_bypass=8.5/100;%[%]
K_fuel=K_fuel_UO2(700);%[W/mK]
K_clad=K_M5(531);%[W/mK]
H_gap=Hgap_He(700,2e5);%[W/mK]
K_oxidus=K_oxidus(700);%[W/mK]
channel_width=0.19;%[m]
core_power=160;%[MW]


