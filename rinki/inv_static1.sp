####     inverter static characteristcs    ####


*include Model file
.LIB /project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib nom
.TEMP 27

*.PARAM wn=2u
*.PARAM wp=3*wn
*.PARAM lc=lu

*define supply
vsupply  vd  0  DC  2.5
vin      in  0  DC  2.5

*define MOSFET
MP1  out  in  vd  vd  SCMOSP  w=3u  l=1u  
MN1
