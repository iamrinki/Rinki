Testbench for inverter circuit

.GLOBAL vdd gnd
.PARAM vsupply=5.0 
**Library model file
.LIB "/project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib" nom

**Include the Inverter netlist
.INCLUDE lab9_inv.sp

**Instatitate inverter
Xinv1 in out lab9_inv
Xinv2 in out lab9_inv


**Sources
Vsup  vdd  0        DC vsupply
Vin   in   0        PULSE(0 vsupply 5n 10p 10p 10n 20n)
Cload out  0        50f


**Analysis
.TRAN 10p  20n
.MEASURE TRAN TPLH TRIG v(in) val=0.5*supply  FALL=1 TRAG v(out) VAL=0.5*vsupply  RISE=1
.MEASURE TRAN TPLH TRIG v(in) val=0.5*supply  RISE=1 TRAG v(out) VAL=0.5*vsupply  FALL=1


.CONTROL
RUN
PLOT v(in) v(out)

.ENDC
.END


