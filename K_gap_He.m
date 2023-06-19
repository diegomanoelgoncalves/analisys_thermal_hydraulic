function [ kg,l1 ] = Kgap_He(T0,i)
%Special reference: Thermophysical Properties of Materials 
%For Nuclear Engineering: A Tutorial and Collection of Data. IAEA-THPH, IAEA, Vienna, 2008. ISBN 978–92–0–106508–7.
% Detailed explanation goes here
% To -temperature in kelvin [K]
% 1 - for pressure 0.1MPa
% 2 - for pressure 30MPa
% lambda - conducitvity [W.m/K]

lambda=[160 183 220 251 279 307 329 377 427;143 174 209 242 270 297 323 372 423]
Temp=[0 100 200 300 400 500 600 800 1000]
po=linspace(0.1,30,length(Temp))
l1=interp1(Temp,lambda(i,:),T0)
kg=15.8* 10^(-6)*T0^(0.79)
end

