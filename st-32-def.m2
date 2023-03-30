-- st-32-def.m2
-- Defines fundamental invariants for No. 32 (f12, f18, f24, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [M1889] Heinrich Maschke.
-- Aufstellung des vollen Formensystems einer quaternaren Gruppe von
-- 51840 linearen Substitutionen. 
-- Math. Ann., 33(3):317–344, 1889.

-- Fundamental invariants are given in [M1889, p. 337, (31)].

R = QQ[z0, z1, z2, z3]

-- [M1889, p. 326, (9)]
C6 = z1^6 + z2^6 + z3^6 - 10*(z1^3*z2^3 + z2^3*z3^3 + z3^3*z1^3);
C9 = (z1^3-z2^3) * (z2^3-z3^3) * (z3^3-z1^3);
C12 = (z1^3 + z2^3 + z3^3) * ((z1^3 + z2^3 + z3^3)^3 + 216*z1^3*z2^3*z3^3);
C18 = (z1^3 + z2^3 + z3^3)^6 - 540*z1^3*z2^3*z3^3*(z1^3+z2^3+z3^3)^3 - 5832*z1^6*z2^6*z3^6;
-- checked 20 Mar 2023

-- [M1889, p. 337, (31)]
f12 = 6*z0^12 + 6*22*C6*z0^6 + 6*220*C9*z0^3 + C6^2 + 5*C12;
f18 = -54*z0^18 + 17*54*C6*z0^12 + 54*1870*C9*z0^9 +
      (1/2)*17*27*(19*C6^2-15*C12)*z0^6 + 54*170*C6*C9*z0^3 + C6^3 -
      30*C6*C12 - 25*C18;
f24 = 1728*C6*z0^18 - 36*1728*C9*z0^15 + 15*144*(7*C12+C6^2)*z0^12 - 
      10*1728*C6*C9*z0^9 + 36*(178*C18 - 135*C6*C12 + 5*C6^3)*z0^6 +
      432*(41*C12-C6^2)*C9*z0^3 + C6^4 + 6*C6^2*C12 - 16*C6*C18 + 9*C12^2;
f30 = -2*6^4*C6*z0^24 + 312*6^4*C9*z0^21 + 216*(715*C12-127*C6^2)*z0^18 + 
      272*6^4*C6*C9*z0^15 + 18*(1306*C18 + 6045*C6*C12 - 295*C6^3)*z0^12 +
      216*(73*C6^2 - 5473*C12)*C9*z0^9 +
      (1/2)*3*(16648*C6*C18 + 2334*C6^2*C12 - 20709*C12^2 - C6^4)*z0^6 -
      36*(1370*C18 - 657*C6*C12 + 7*C6^3)*C9*z0^3 + C6^5 - 19*C6^3*C12 + 
      29*C6^2*C18 - 6*C6*C12^2 - 5*C12*C18;
-- checked 20 Mar 2023
