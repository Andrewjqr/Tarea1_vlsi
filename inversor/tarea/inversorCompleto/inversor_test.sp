*  inversor_test.sp

.temp 25
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Faerron_Duran_I_2024_vlsi/tutorial/Hspice/lp5mos/xt018.lib' tm
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Faerron_Duran_I_2024_vlsi/tutorial/Hspice/lp5mos/param.lib' 3s
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Faerron_Duran_I_2024_vlsi/tutorial/Hspice/lp5mos/config.lib' default

.global gnd
.option post
********************************************************************************
* Library          : basic_cells
* Cell             : inversor
* View             : schematic
* View Search List : hspice hspiceD schematic cmos_sch spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
xm0 out net13 gnd gnd ne w=220n l=180n as=1.056e-13 ad=1.056e-13 ps=1.4e-06 pd=1.4e-06
+ nrs=1.22727 nrd=1.22727 m='1*1' par1='1*1' xf_subext=0
xm1 out net13 net9 net9 pe w=440n l=180n as=2.112e-13 ad=2.112e-13 ps=1.84e-06
+ pd=1.84e-06 nrs=0.613636 nrd=0.613636 m='1*1' par1='1*1' xf_subext=0
v2 net9 gnd dc=1.8
v7 net13 gnd dc=0 pulse ( 0 1.8 0 100p 100p 2n 4.2n )


*--------------------------------------------------------------
* Stimulus
*--------------------------------------------------------------
.tran 10p 10n
.probe v(out) v(net13)
.print v(out) v(net13)

.end

