# Calculation power density

The power density distribution in a nuclear reactor can be calculated using the SERPENT code. About 97% of the recoverable fission energy is deposited directly in the fissile material. The power density is calculated by multiplying the energy released by fission by the fission reaction rate (Rf). The reaction rate is defined as the neutron flux multiplied by the cross-section. Once the total power is known, the program will provide us with the fission reaction rate throughout the reactor. By dividing the reactor into several equal volumes (meshes), we can simplify the calculation of power density in each of these.

# Anaysis thermal hydraulics

Code for calculation thermal and hydraulics in fuel assembly in nuclear reactors. From the power density obtained by the SERPENT code in the process.

Described in the methodology, we can do the thermal analysis of the fuel element
Obtained. For this we take physical parameters characteristic of NuScale as flow, refrigerant inlet pressure and temperature to ally with heat generation
provided by the power density can provide us with the temperature profile in the hotter rod.

## References

 - [SERPENT](http://serpent.vtt.fi/mediawiki/index.php/Input_syntax_manual#mat_.28material_definition.29)

 - [MATLAB](https://www.mathworks.com/products/matlab.html)

## Authors

- [@diegomanoelgoncalves](https://www.github.com/diegomanoelgoncalves)

## Features

The code calculated unidimensionally along the axial length, based on the detection results of the pin reaction rate in hot channel.

- Power Density[W/cm]
- Peak factor[-]
- Entalpy[kj/kg]
- Pressure[MPa]
- Quality [%]
- DNB-Correlation W3 nonuniform
- DNB-Correlation W3 uniform
- DNB-Correlation Bowring
- Heat Flux-Correlation W3 uniform[MW/m²]
- Heat Flux-Correlation W3 nonuniform[MW/m²]
- Heat Flux-Correlation Bowring[MW/m²]
- Temperature [degree K]
- Dimensions[m]
- Mass rate core[kg/s]
- Area assembly[m^2]
- Flowrate assembly[kg/m^2s]
- Mass rate channel[kg/s]
- Area channel[m^2]
- Subchannel flow rate[kg/m^2s]
- Average linear heat rate[W/m]
- Wetted perimeter
- Equivalent_diameter or diameter hydraulic
- Viscosity dynamic
- Thermal Capacity
- Density fluid
- Temperature Coolant
- Viscosity dynamic
- Reynolds
- Prandlt
- Correlation Dittus-Boelter 
- Correlation Gnielinski 
- Convection fluid

## Requirements

- MATLAB 2015+ or greater 
- SERPENT.vtt
    
## Running the tests
- Open MATLAB 2015 or greater
- Read detector results from SERPENT [filename.det] in MATLAB
```bash
 run [filename].det.m
```
- Run in command window of the MATLAB for Assembly homogeneous
```bash
 run power_density.m
```
- Run in command window of the MATLAB for Assembly heterogeneous
```bash
 run power_density_sbu.m
```
- Change name file in code in power density
```bash
Import txt files power density result from pwd 
fileID1 = fopen('filename_0.txt','w');
fileID2 = fopen('filename_1.txt','w');
```
## Open MATLAB 2015 or greater
 Read input filename with parameters design project fuel assembly
- number of pins variable [number_pin][unit]
- number of assembly variable [number_assembly][unit]
- number of tube guide variable [number_tg][unit]
- number of rods variable [number_rods][unit]
- radius tube variable [radius_tube][m]
- thickness gap variable [thickness_gap][m]
- thickness clad variable [thickness_clad][m]
- thickness oxidus variable [thickness_oxidus][m]
- radius of fuel variable [radius_fuel][m]
- pitch of assembly variable [pitch][m]
- mass of rate variable [mass_rate][kg/s]
- Temperature at moderator input variable [Tm_in][K]
- Temperature at moderator output variable [Tm_in][K]
- temperature fuel variable [Temperature_fuel]
- diameter equivalent variable [eq_diameter][m]
- pressure in variable [Pressure_in][MPa]
- percentage of refrigerant loss in the element variable [percent_down_mass][%]
- core length variable [core_length][m]
- core_bypass=5/100;%8.5%[%]
- thermal conductivity fuel [K_fuel][W/m.K]
- thermal conductivity in cladd [K_clad][W/m.K]
- convection in gap [H_gap][W/m.K]
- conductivity in clad oxidus [K_oxidus][W/m.K]
- channel width [channel_width][m]
- total core power [core_power][W]
```bash
 run [filename].m
```
- Change local file in code in thermal or hydraulic
```bash
Import txt files power density result from pwd 
file0 = fopen('filename_1.txt','w');
PDZ1 = importdata('filename_1.txt');
Z1 =  importdata('filename_0.txt');
```
- Run in thermal code in command window of the MATLAB 
```bash
 run thermal.m
```
- Run in hydraulic code in command window of the MATLAB
```bash
 run hydraulic.m
```
## Stack used

MATLAB2015 +, ANSI-C, SERPENT.VTT

## Demonstration
### Example of calculation fuel assembly NuScale 4.35 enrichment U-235.
- [Power Density]

- [Pressure-MPa]

- [Peak Factor](https://github.com/diegomanoelgoncalves/analisys_thermal_hydraulic/blob/thermal-hydraulic/peak_factor.png)

- [Entalpy-kj/kg](https://github.com/diegomanoelgoncalves/analisys_thermal_hydraulic/blob/thermal-hydraulic/entalpy.png)

- [Quality-%](https://github.com/diegomanoelgoncalves/analisys_thermal_hydraulic/blob/thermal-hydraulic/quality.png)

- [DNB-](https://github.com/diegomanoelgoncalves/analisys_thermal_hydraulic/blob/thermal-hydraulic/dnb.png)

- [Radial Temperature-K](https://github.com/diegomanoelgoncalves/analisys_thermal_hydraulic/blob/thermal-hydraulic/radial_temperature.png)

- [Axial Temperature-K](https://github.com/diegomanoelgoncalves/analisys_thermal_hydraulic/blob/thermal-hydraulic/axial_temperature.png)
