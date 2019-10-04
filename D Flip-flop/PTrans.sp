*The subcircuit for Pass Transistor
*Connections :
*             Input
*             | Output
*             | | PMOS Voltage
*             | | |  NMOS Voltage
*             | | |  |  
*             | | |  |  |The scale for the width of NMOS
*             | | |  |  |      The scale for the width of PMOS            
*             | | |  |  |      |
.subckt PTran I O vp vn Ni = 3 Pi = 3
Mp O vp I vss PMOS W=' Pi' L=2 AS='Pi *5' PS='2*Pi+10' AD='Pi*5' PD='2* Pi +10'
Mn O vn I 0 NMOS W='Ni' L=2 AS='Ni*5' PS='2*Ni+10' AD='Ni*5' PD='2*Ni+10'


*Library
* T28M SPICE BSIM3 VERSION 3.1 PARAMETERS

*SPICE 3f5 Level 8, Star-HSPICE Level 49, UTMOST Level 8

* DATE: Oct  4/02
* LOT: T28M                  WAF: 6001
* Temperature_parameters=Default
.MODEL NMOS NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 4.1E-9
+XJ      = 1E-7           NCH     = 2.3549E17      VTH0    = 0.3832823
+K1      = 0.5915709      K2      = 2.432705E-3    K3      = 1E-3
+K3B     = 2.881708       W0      = 1E-7           NLX     = 1.556472E-7
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 1.8671789      DVT1    = 0.5070952      DVT2    = -0.0135063
+U0      = 275.5555875    UA      = -1.150238E-9   UB      = 2.014145E-18
+UC      = 4.217107E-11   VSAT    = 1.002265E5     A0      = 1.900204
+AGS     = 0.4125379      B0      = -1.06835E-8    B1      = -1E-7
+KETA    = 2.505893E-4    A1      = 4.377095E-4    A2      = 0.9584318
+RDSW    = 105            PRWG    = 0.5            PRWB    = -0.2
+WR      = 1              WINT    = 9.458635E-9    LINT    = 1.257015E-8
+XL      = -2E-8          XW      = -1E-8          DWG     = -1.204617E-9
+DWB     = 9.664221E-9    VOFF    = -0.0946268     NFACTOR = 2.3761356
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 1.375861E-3    ETAB    = 1.376595E-4
+DSUB    = 2.75603E-3     PCLM    = 0.8650201      PDIBLC1 = 0.2388154
+PDIBLC2 = 3.957307E-3    PDIBLCB = -0.1           DROUT   = 0.7285083
+PSCBE1  = 6.140394E10    PSCBE2  = 5.822994E-8    PVAG    = 0.1710916
+DELTA   = 0.01           RSH     = 6.7            MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 7.32E-10       CGSO    = 7.32E-10       CGBO    = 1E-12
+CJ      = 9.775464E-4    PB      = 0.7224132      MJ      = 0.3611113
+CJSW    = 2.244809E-10   PBSW    = 0.7522727      MJSW    = 0.1
+CJSWG   = 3.3E-10        PBSWG   = 0.7522727      MJSWG   = 0.1
+CF      = 0              PVTH0   = -1.4684E-3     PRDSW   = -0.6888789
+PK2     = 8.530602E-4    WKETA   = 1.029979E-3    LKETA   = -9.473178E-3
+PU0     = -0.2034778     PUA     = -2.37215E-11   PUB     = 4.74506E-25
+PVSAT   = 901.6731904    PETA0   = 1E-4           PKETA   = 1.329782E-3     )
*
.MODEL PMOS PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 4.1E-9
+XJ      = 1E-7           NCH     = 4.1589E17      VTH0    = -0.4077986
+K1      = 0.581505       K2      = 0.0273445      K3      = 0
+K3B     = 10.7066855     W0      = 1E-6           NLX     = 7.085816E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 0.5427394      DVT1    = 0.3493763      DVT2    = 0.08174
+U0      = 116.6094811    UA      = 1.563897E-9    UB      = 1E-21
+UC      = -1E-10         VSAT    = 1.826166E5     A0      = 1.6423237
+AGS     = 0.3934878      B0      = 1.149554E-6    B1      = 3.508687E-6
+KETA    = 0.0146913      A1      = 0.4749659      A2      = 0.31182
+RDSW    = 309.921929     PRWG    = 0.5            PRWB    = -0.5
+WR      = 1              WINT    = 0              LINT    = 2.558214E-8
+XL      = -2E-8          XW      = -1E-8          DWG     = -2.004125E-8
+DWB     = 1.039815E-8    VOFF    = -0.1025445     NFACTOR = 1.9238833
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0276906      ETAB    = -0.0693376
+DSUB    = 0.6302703      PCLM    = 1.3245935      PDIBLC1 = 0
+PDIBLC2 = 0.0136588      PDIBLCB = -1E-3          DROUT   = 7.780261E-4
+PSCBE1  = 1.005282E10    PSCBE2  = 2.90349E-9     PVAG    = 3.2027144
+DELTA   = 0.01           RSH     = 7.5            MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 6.57E-10       CGSO    = 6.57E-10       CGBO    = 1E-12
+CJ      = 1.18422E-3     PB      = 0.8552517      MJ      = 0.4131208
+CJSW    = 1.696634E-10   PBSW    = 0.6336557      MJSW    = 0.2424658
+CJSWG   = 4.22E-10       PBSWG   = 0.6336557      MJSWG   = 0.2424658
+CF      = 0              PVTH0   = 8.414026E-4    PRDSW   = 9.9222413
+PK2     = 1.47551E-3     WKETA   = 2.494855E-3    LKETA   = 5.87759E-3
+PU0     = -1.8432469     PUA     = -6.92569E-11   PUB     = 1E-21
+PVSAT   = 50             PETA0   = 1E-4           PKETA   = 2.230497E-3     )
*





.ends