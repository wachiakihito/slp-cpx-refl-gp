-- st-33-test.m2
-- Tests st-33-def.m2 for No. 33 (f4, f6, f10, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [B] Heinrich Burkhardt.
-- Untersuchungen aus dem Gebiete der hyperelliptischen Modulfunctionen.
-- Math. Ann., 38(2):161–224, 1891.

-- [M1889] Heinrich Maschke.
-- Aufstellung des vollen Formensystems einer quaternaren Gruppe von
-- 51840 linearen Substitutionen.
-- Math. Ann., 33(3):317–344, 1889.

load "./test-lib.m2"
load "./st-33-def.m2"

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(33, {f4, f6, f10, f12, f18}, {4, 6, 10, 12, 18});

-- [B, p191 (2)-(3)]
phi = y2*y3*y4;
psi = y2^3 + y3^3 + y4^3;
u = y0*psi + 6*y1*phi;

-- [B, p192 (7)-(9)]
-- Phi = y0^4 + 8*y0*y2^3; -- original, misprint
Phi    = y0^4 + 8*y0*y1^3; -- correction, y2 -> y1
Psi = y0^3*y1 - y1^4;
t = y0^6 - 20*y0^3*y1^3 - 8*y1^6;

-- Check [B, p193 (10)]
<< "[Test No. 33] Check [B, p193 (10)] ";
<< Phi^3 - 64*Psi^3 == t^2 << endl;

-- [B, p193 (11)]
-- These elements are in [M1889, p326, (9)], which is for No. 32.
-- The variables are changed from z1, z2, z3 to y2, y3, y4.
C6 = y2^6 + y3^6 + y4^6 - 10*(y2^3*y3^3 + y3^3*y4^3 + y4^3*y2^3);
C9 = (y2^3-y3^3) * (y3^3-y4^3) * (y4^3-y2^3);
C12 = (y2^3 + y3^3 + y4^3) * ((y2^3 + y3^3 + y4^3)^3 + 216*y2^3*y3^3*y4^3);
C18 = (y2^3 + y3^3 + y4^3)^6 - 540*y2^3*y3^3*y4^3*(y2^3+y3^3+y4^3)^3 - 5832*y2^6*y3^6*y4^6;
C12p = y2*y3*y4 * (27*y2^3*y3^3*y4^3 - (y2^3 + y3^3 + y4^3)^3);

-- Check [M1889, p326, (10)]
<< "[Test No. 33] Check [M1889, p326 (10)-1] ";
<< 432*C9^2 == C6^3 - 3*C6*C12 + 2*C18 << endl;
<< "[Test No. 33] Check [M1889, p326 (10)-2] ";
<< 1728*C12p^3 == C18^2 - C12^3 << endl;

-- [B, p193 (14)-(17)]
Psi1 = psi * (-y0^3 + 4*y1^3) + 18*phi*y0^2*y1;
Psi2 = -psi^2*y1^2 - 3*phi*psi*y0^2 + 18*phi^2*y0*y1;
Phi3 = -psi^3*y0 + 18*phi*psi^2*y1 + 108*phi^3*y0;
t3 = psi^3 * (y0^3 + 8*y1^3) - 54*phi*psi^2*y0^2*y1 + 324*phi^2*psi*y0*y1^2 +
     216*phi^3*(y0^3-y1^3);
     
-- Check [B, p194 (18)]
<< "[Test No. 33] Check [B, p194 (18)] ";
<< Psi1^2 == (16*Psi*Psi2 + u^2*Phi) << endl;

-- Check [B, p194 (19)]
<< "[Test No. 33] Check [B, p194 (19)] ";
<< Psi1^3 == 2*Phi^2*Phi3 - t*t3 - 3*u^2*Phi*Psi1 - u^3*t << endl;

-- [B, p207 (1)]
a1 = -Y(3,0,0,0);
a2 = Y(3,3,0,0);
a3 = -Y(3,3,3,0);
a4 = Y(3,3,3,3);
a4c = Y(1,1,1,1);

-- [B, p208 (1)]
-- There are 3 presentations for f4 (J4 in [B]).
-- f4 defined in 'st-33-def.m2' is of 2nd presentation.
-- Three presentations are f4a, f4b and f4c defined below.
f4a = Phi + 8*u;
f4b = f4;
f4c = y0^4 - 8*a1*y0 + 48*a4c;

--  Check f4
<< "[Test No. 33] Check 3 presentations of [B, p208 (1)] coincide" << endl;
<< "f4a == f4b ? " << f4a == f4b << endl;
<< "f4a == f4c ? " << f4a == f4c << endl;
<< "f4b == f4c ? " << f4b == f4c << endl;

-- [B, p208 (2)]
-- There are 3 presentations for f6 (J6 in [B]).
-- f6 defined in 'st-33-def.m2' is of 2nd presentation.
-- Three presentations are f6a, f6b and f6c defined below.
-- The 3rd presentation contains misprints, and
-- f6c and f6cX are the original one and its correction.
f6a = t + 20*Psi1 - 8*C6;
f6b = f6;
f6c  = y0^6 - 20*a1*y0^3 + 96*a2 - 8*a1^2 + 360*y0^2*Y(1,1,1,1); -- original, misprint
f6cX = y0^6 + 20*a1*y0^3 + 96*a2 - 8*a1^2 + 360*y0^2*Y(1,1,1,1); -- correction, '-20' -> '+20'

--  Check f6
<< "[Test No. 33] Check 3 presentations of [B, p208 (2)] coincide" << endl;
<< "f6a == f6b ? " << f6a == f6b << endl;
<< "f6a != f6c ? " << f6a != f6c << endl;
<< "f6b != f6c ? " << f6b != f6c << endl;
<< "f6a == f6cX ? " << f6a == f6cX << endl;
<< "f6b == f6cX ? " << f6b == f6cX << endl;

-- [B, p208 (3)]
-- There are 3 presentations for f10 (J10 in [B]).
-- f10 defined in 'st-33-def.m2' is of 2nd presentation.
-- Three presentations are f10a, f10b and f10c defined below.
f10a = (1/24)*(Phi*Psi1 + u*t + 2*Phi*C6 + 2*u*Psi1 - 2*Phi3 - 2*u*C6);
f10b = f10;
f10c = -a2*y0^4 + (9*a3-a1*a2)*y0 + a4c*(y0^6-a1*y0^3+6*a2-2*a1^2) +
       9*a4c^2*y0^2;

--  Check f10
<< "[Test No. 33] Check 3 presentations of [B, p208 (3)] coincide" << endl;
<< "f10a == f10b ? " << f10a == f10b << endl;
<< "f10a == f10c ? " << f10a == f10c << endl;
<< "f10b == f10c ? " << f10b == f10c << endl;

-- [B, p208 (4)]
-- There are 3 presentations for f12 (J12 in [B]).
-- f12 defined in 'st-33-def.m2' is of 2nd presentation.
-- Three presentations are f12a, f12b and f12c defined below.
-- The 3rd presentation contains misprints, and
-- f12c and f12cX are the original one and its correction.
f12a = (1/24)*(3*t*Psi1 + 3*u*Phi^2 + 19*Psi1^2 - 9*u^2*Phi - 10*C6*t - 11*t3 + 9*u^3 -
      2*C6*Psi1 - 4*C12 + 4*C6^2);
f12b = f12;

f12c = 5*a2*y0^6 + (99*a3+a1*a2)*y0^3 + 216*a4 - 36*a1*a3 + 24*a2^2 - 4*a1^2*a2 +
       a4c*(3*y0^8-33*a1*y0^5+(18*a2+30*a1^2)*y0^2) + -- original, misprint
       a4c^2*(243*y0^4-108*a1*y0);                    -- original, misprint

f12cX = 5*a2*y0^6 + (99*a3+a1*a2)*y0^3 + 216*a4 - 36*a1*a3 + 24*a2^2 - 4*a1^2*a2 +
        a4c*(3*y0^8+33*a1*y0^5+(18*a2+30*a1^2)*y0^2) + -- correction, '-33' -> '+33'
        a4c^2*(243*y0^4+108*a1*y0);                    -- correction, '-108' -> '+108'

-- Check f12
<< "[Test No. 33] Check 3 presentations of [B, p208 (4)] coincide" << endl;
<< "f12a == f12b ? " << f12a == f12b << endl;
<< "f12a != f12c ? " << f12a != f12c << endl;
<< "f12b != f12c ? " << f12b != f12c << endl;
<< "f12a == f12cX ? " << f12a == f12cX << endl;
<< "f12b == f12cX ? " << f12b == f12cX << endl;

-- [B, p209 (5)]
-- There are 3 presentations for f18 (J18 in [B]).
-- f18 defined in 'st-33-def.m2' is of 2nd presentation.
-- Three presentations are f18a, f18b and f18c defined below.
-- The 2nd presentation contains misprints, and
-- f18b and f18bX are the original one and its correction.
-- The 3rd presentation contains misprints, and
-- f18c and f18cX are the original one and its correction.
f18a = (1/864)*(72*t*Psi*Psi2 + 9*u*Phi^2*Psi1 + 9*u^2*Phi*t + 288*C6*Psi^3 +
      4*Phi^2*Phi3 - 18*t*t3 - 42*u^2*Phi*Psi1 - 20*u^3*t - 18*C6*t*Psi1 -
      18*C6*Phi^2*u + 84*C12*t - 72*u*Phi*Phi3 + 162*u^3*Psi1 -
      240*C6*Psi*Psi2 + 12*C6*u^2*Phi - 6*C6^2*t + 24*Psi1*C12 - 36*u^2*Phi3 -
      6*C6*t3 - 18*C6*u^3 - 12*C6^2*Psi1 - 4*C18 + 6*C6*C12 - 2*C6^3);

f18b = 3*y0^10*Y(2,2,2,2) - 4*y0^9*Y(3,3,3) + 12*y0^8*Y(4,4,1,1) - -- original, misprint
       36*y0^7*Y(5,2,2,3) - y0^6*Y(6,6) + 10*y0^6*Y(6,3,3) +       -- original, misprint
       96*y0^6*Y(3,3,3,3) - 12*y0^5*Y(7,4,1,1) -
       90*y0^5*Y(4,4,4,1) + 27*y0^4*Y(8,2,2,2) +
       108*y0^4*Y(5,5,2,2) + 2*y0^3*Y(9,6) - 8*y0^3*Y(9,3,3) +
       4*y0^3*Y(6,6,3) - 168*y0^3*Y(6,3,3,3) +
       6*y0^2*Y(10,4,1,1) - 24*y0^2*Y(7,7,1,1) +
       12*y0^2*Y(7,4,4,1) + 315*y0^2*Y(4,4,4,4) +
       12*y0*Y(11,2,2,2) + 18*y0*Y(8,5,2,2) -     -- original, misprint
       27*y0*Y(5,5,5,2) - Y(12,6) + 2*Y(12,3,3) + -- original, misprint
       2*Y(9,9) - 2*Y(9,6,3) - 8*Y(6,3,3,3) +     -- original, misprint
       6*Y(6,6,6) + 8*Y(6,6,3,3);

f18bX = f18; -- see 'st-33-def.m2' for corrections

f18c = 4*a3*y0^9 + (54*a4+12*a1*a3-a2^2)*y0^6 + (162*a1*a4 - 18*a2*a3 +
       12*a1^2*a3-2*a1*a2^2)*y0^3 + (27*a3^2-18*a1*a2*a3+4*a1^3*a3 +
       4*a2^3-a1^2*a2^2) +
       a4c*(12*a2*y0^8 + (54*a3+12*a1*a2)*y0^5 + (243*a4+54*a1*a3 - -- original, misprint
       36*a2^2+6*a1^2*a2)*y0^2) +
       a4c^2*(3*y0^10+36*a1*y1^7 + (54*a2+27*a1^2)*y0^4 +  -- original, misprint
       (45*a3+18*a1*a2-12*a1^3)*y0);  -- original, misprint

f18cX = 4*a3*y0^9 + (54*a4+12*a1*a3-a2^2)*y0^6 + (162*a1*a4 - 18*a2*a3 +
       12*a1^2*a3-2*a1*a2^2)*y0^3 + (27*a3^2-18*a1*a2*a3+4*a1^3*a3 +
       4*a2^3-a1^2*a2^2) +
       a4c*(6*a2*y0^8 + (54*a3+12*a1*a2)*y0^5 + (243*a4+54*a1*a3 - -- correction, 12 -> 6
       36*a2^2+6*a1^2*a2)*y0^2) +
       a4c^2*(3*y0^10+18*a1*y0^7 + (54*a2+27*a1^2)*y0^4 +  -- correction, 36 -> 18, y1 -> y0
       (162*a3-54*a1*a2+12*a1^3)*y0);  -- correction, 45->162, +18->-54, -12->+12

-- Check f18
<< "[Test No. 33] Check 3 presentations of [B, p208 (5)] coincide" << endl;
<< "f18a != f18b ? " << f18a != f18b << endl;
<< "f18a != f18c ? " << f18a != f18c << endl;
<< "f18b != f18c ? " << f18b != f18c << endl;

<< "f18a == f18bX ? " << f18a == f18bX << endl;
<< "f18bX != f18c ? " << f18bX != f18c << endl;

<< "f18a == f18cX ? " << f18a == f18cX << endl;
<< "f18b != f18cX ? " << f18b != f18cX << endl;

<< "f18bX == f18cX ? " << f18bX == f18cX << endl;

-- Define Li [B, p211, 2nd paragraph]
L4 = sub(f4, y0=>0);
L6 = sub(f6, y0=>0);
L10 = sub(f10, y0=>0);
L12 = sub(f12, y0=>0);
L18 = sub(f18, y0=>0);

-- Check [B, p211 (1)]
L6p = 3*a2 - a1^2;
<< "[Test No. 33] Check [B, p211 (1)] ";
<< L6p*L4 == 24*L10 << endl;

-- Check [B, p211 (2)]
L12p = 2^9 * L12 - L4^3
<< "[Test No. 33] Check [B, p211 (2)] ";
<< L12p == 2^11 * (-9*a1*a3 + 6*a2^2 - a1^2*a2) << endl;

-- Check [B, p211 (3)]
M6 = 24*a1^2;
<< "[Test No. 33] Check [B, p211 (3)] ";
<< L6 - M6 == 32*L6p << endl;

-- Check [B, p211 (4)]
M12 = 2^11 * (-9*a1*a3 + (1/3)*a1^4);
<< "[Test No. 33] Check [B, p211 (4)] ";
<< L12p - M12 == (2^11/3)*L6p*(a1^2 + 6*a2) << endl;

-- Check [B, p211, (5)]
M18 = (27*a3^2 - 2*a1^3*a3 + (1/27)*a1^6);
<< "[Test No. 33] Check [B, p211 (5)] ";
<< L18 - M18  == (1/27)*L6p*(a1^4 + 3*a1^2*a2 + 36*a2^2 - 162*a1*a3) << endl;

-- Check [B, p211, maybe (6)]
<< "[Test No. 33] Check [B, p211, maybe (6)] ";
 << M12^2 - 2^19 * M6*M18 == 0 << endl;

-- Check [B, p211 (7)]
L18p = a1^3*a3 + 9*a1*a2*a3 - a2^3 - 27*a3^2;  -- original, misprint
L18pX = -a1^3*a3 + 9*a1*a2*a3 - a2^3 - 27*a3^2; -- correction, a1^3*a3 -> -a1^3*a3
<< "[Test No. 33] Check [B, p211 (7)] fails before correction ";
<< L12p^2 - 2^19 * L6*L18 != 2^24*L6p*L18p << endl;
<< "[Test No. 33] Check [B, p211 (7)] after correction ";
<< L12p^2 - 2^19 * L6*L18 == 2^24*L6p*L18pX << endl;

-- Check L18' + L18 is divisible by L6' [B, p211, line -3]
<< "[Test No. 33] Check L18' + L18 is divisible by L6' [B, p211, line -3] ";
<< (L18pX + L18) ==  L6p * (a2^2 - 3*a1*a3) << endl;

-- Check [B, p211 (8)]
<< "[Test No. 33] Check [B, p211 (8)] ";
f = L12p^2 - 2^19*L6*L18;
g = -2^24*L6p*L18 + (2^13/3)*L6p^2*L12p - (2^21/3^3)*L6p^3*L6 + (2^24/3^3)*L6p^4;
<< f == g << endl;

-- Check [B, p212 (9)]
<< "[Test No. 33] Check [B, p212 (9)] ";
f = L4^4 * ((2^9*L12 - L4^3)^2 - 2^19*L6*L18);
g = 3*2^27*L4^3*L10*L18 - 3*2^19*L4^2*L10^2*(2^9*L12-L4^3) + 2^30*L4*L10^3*L6 - 3*2^36*L10^4;
<< f + g == 0 << endl;

-- Check [B, p212 (10)]
<< "[Test No. 33] Check [B, p212 (10)] ";
f = (L4^2*(2^9*L12 - L4^3) - 3*2^18*L10^2)^2;
g = 2^19*(L4*L6 - 3*2^8*L10) * (L4^3*L18 - 2^11*L10^3);
<< f - g == 0 << endl;

-- Check [B, p212 (11)]
<< "[Test No. 33] Check [B, p212 (11)] " 
-- construct F40
-- F40 is a product of linear forms in [B, p189 (4)-(6)].
-- Note that the coefficient in [B, p189 (6)] contains misprints.
-- That of Y0 is correct, but those of Yi (i = 1, 2, 3, 4) should be
-- multiplied by two as in the last line of the definition of
-- 'f40factor' below.
-- See 1st formula of [B, p187 (5)].
K = QQ[e] / ideal{e^2+e+1};
S = K[y0, y1, y2, y3, y4];
R2S = map(S, R);
J4 = R2S f4;
J6 = R2S f6;
J10 = R2S f10;
J12 = R2S f12;
J18 = R2S f18;

f40factor = 
  {y0} |
  table(3, {y1,y2,y3,y4}, (lam, ya) -> y0 + 2*e^lam*ya) |
  apply(3, l1 -> table(3, 3, (l2, l3) -> (
    y0 + 2*e^l1*y1 + 2*e^l2*y2 + 2*e^l3*y3 + 2*e^(-l1-l2-l3)*y4)));
F40 = product flatten flatten f40factor;  
f = (J4^2 * (2^9*J12 - J4^3) - 3*2^18*J10^2)^2 - 
    2^19 * (J4*J6 - 3*2^8*J10) * (J4^3*J18 - 2^11*J10^3);
<< f == F40 << endl;

-- Check the invariance of fi (i = 4, 6, 10, 12, 18) under the action
-- of Generator of the group [B, p186 (4)]
<< "[Test No. 33] Check invariance of fi "  << endl;
use S;
actionB = {
  y0=>y0 + 2*y1,
  y1=>y0 - y1,
  y2=>y2 + y3 + y4,
  y3=>y2 + e*y3 + e^2*y4,
  y4=>y2 + e^2*y3 + e*y4
};
actionC = {
  y0=>y0,
  y1=>y1,
  y2=>y4,
  y3=>y2,
  y4=>y3
};
actionD = {
  y0=>-y0,
  y1=>-y2,
  y2=>-y1,
  y3=>-y3,
  y4=>-y4
};
actionS2 = {
  y0=>y0,
  y1=>e^2*y1,
  y2=>y2,
  y3=>e^2*y3,
  y4=>e^2*y4
};

--  Check invariance of J4
<< "Check invariance of J4  ";
d = first degree J4;
<< " B "  << sub(J4, actionB)  == J4*(-3)^(d/2);
<< " C "  << sub(J4, actionC)  == J4;
<< " D "  << sub(J4, actionD)  == J4;
<< " S2 " << sub(J4, actionS2) == J4 << endl;

--  Check invariance of J6
<< "Check invariance of J6  ";
d = first degree J6;
<< " B "  << sub(J6, actionB)  == J6*(-3)^(d/2);
<< " C "  << sub(J6, actionC)  == J6;
<< " D "  << sub(J6, actionD)  == J6;
<< " S2 " << sub(J6, actionS2) == J6 << endl;

--  Check invariance of J10
<< "Check invariance of J10 ";
d = first degree J10;
<< " B "  << sub(J10, actionB)  == J10*(-3)^(d/2);
<< " C "  << sub(J10, actionC)  == J10;
<< " D "  << sub(J10, actionD)  == J10;
<< " S2 " << sub(J10, actionS2) == J10 << endl;

--  Check invariance of J12
<< "Check invariance of J12 ";
d = first degree J12;
<< " B "  << sub(J12, actionB)  == J12*(-3)^(d/2);
<< " C "  << sub(J12, actionC)  == J12;
<< " D "  << sub(J12, actionD)  == J12;
<< " S2 " << sub(J12, actionS2) == J12 << endl;

--  Check invariance of J18
<< "Check invariance of J18 ";
d = first degree J18;
<< " B "  << sub(J18, actionB)  == J18*(-3)^(d/2);
<< " C "  << sub(J18, actionC)  == J18;
<< " D "  << sub(J18, actionD)  == J18;
<< " S2 " << sub(J18, actionS2) == J18 << endl;

exit(0);
