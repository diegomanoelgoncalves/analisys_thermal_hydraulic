function [ Hg ] = Hgap_He(T0,P0)
%Special reference: Thermophysical Properties of Materials 
%For Nuclear Engineering: A Tutorial and Collection of Data. IAEA-THPH, IAEA, Vienna, 2008. ISBN 978–92–0–106508–7.
% Detailed explanation goes here
% To -temperature in kelvin [K]
% 1 - for pressure 0.1MPa
% 2 - for pressure 30MPa
% lambda - conducitvity [W.m/K]
a=0.425-2.3*(10^(-4))*T0
R=8.31 %[J/mole K]
CP=20.967;
CV=12.863;
gama=CP/CV;
Hg=(P0/4)*((2*R/pi)^(0.5))*((gama+1)/(gama-1))*(1/T0^(0.5))*(a/(2-a))
end

