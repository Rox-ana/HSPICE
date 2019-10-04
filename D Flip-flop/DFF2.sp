*The D-FF with a pass transistor in each latch

.option accurate post
.option scale = 90n
.global Vss

*subcircuits
.include PTrans.sp
.include Inv.sp

*power supply and clk

Vss vss gnd 1.8
VD D gnd PWL(0ns 1.8 3.9n 1.8 4n 0 13.9n 0 14n 1.8 19.9n 1.8 20n 0 29.9ns 0 30n 1.8 40n 1.8)
Vclk clk gnd pulse(0 1.8 5ns 100ps 100ps 5ns 10ns)

*components:

Xpt1 D D1 clk clkp PTran Ni=3 Pi=3

*latch1
Xinv1  D1 D1N  Inv Ni=3 Pi=9
Xinv2 D1N D1NN  Inv Ni=3 Pi=9
XPt3 D1NN D1 clkp clk  PTran Ni=3 Pi=3

Xpt2 D1N Qp clkp clk PTran Ni=3 Pi=3

*latch2
Xinv3 Qp Q  Inv Ni=3 Pi=9 
Xinv4 Q D1N2 Inv Ni=3 Pi=9
XPt4 D1N2 Qp clk clkp  PTran Ni=3 Pi=3

*clock inverter
Xinv5 clk clkp Inv Ni=3 Pi=9

*operations:
.measure tran tph Trig v(clk) val = 0.9v Rise = 2 Targ v(Q) val=0.9v Rise = 2
.measure tran tpl Trig v(clk) val=0.9v Rise = 3 Targ v(Q) val=0.9v Fall = 2
.measure tpd param='(tph+tpl)/2'
.tran 10p 40n

.end