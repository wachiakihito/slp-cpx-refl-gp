-- st-31-def.m2
-- Defines fundamental invariants for No. 31 (f8, f12, f20, f24)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [M1887] Heinrich Maschke.
-- Ueber die quaternare, endliche, lineare Substitutionsgruppe der Borchardt’schen Moduln. 
-- Math. Ann., 30(4):496–515, 1887.

-- Fundamental invariants are given in [M1887, p. 505, (12)].

R = QQ[z1, z2, z3, z4]

-- [M1887, p501, (7)]
phi = z1^4 + z2^4 + z3^4 + z4^4;
psi2 = (z1*z2)^2 + (z3*z4)^2;
psi3 = (z1*z3)^2 + (z2*z4)^2;
psi4 = (z1*z4)^2 + (z2*z3)^2;
Chi = z1*z2*z3*z4 -- ('chi' is a keyword of M2)
-- checked 20 Mar 2023
-- checked 22 Mar 2023

-- [M1887, p504 (11)]
Phi1 = phi + 6*(- psi2 - psi3 - psi4);
Phi2 = phi + 6*(- psi2 + psi3 + psi4);
Phi3 = phi + 6*(  psi2 - psi3 + psi4);
Phi4 = phi + 6*(  psi2 + psi3 - psi4);
Phi5 = -2*phi - 24*Chi;
Phi6 = -2*phi + 24*Chi;
-- checked 20 Mar 2023
-- checked 22 Mar 2023

Phis = {Phi1, Phi2, Phi3, Phi4, Phi5, Phi6};

-- [M1887, p505, (12)]
f8 = 0;
for i in (0..5) do (
  for k in (i+1..5) do (
    f8 = f8 + Phis#i * Phis#k
  )
);
f8 = f8 / (-6);
-- checked 20 Mar 2023
-- checked 22 Mar 2023

f12 = 0;
for i in (0..5) do (
  for k in (i+1..5) do (
    for l in (k+1..5) do (
      f12 = f12 + Phis#i * Phis#k * Phis#l
    )
  )
);
f12 = f12 / (-4);
-- checked 20 Mar 2023
-- checked 22 Mar 2023

f20 = 0;
for i in (0..5) do (
  for k in (i+1..5) do (
    for l in (k+1..5) do (
      for m in (l+1..5) do (
        for n in (m+1..5) do (
          f20 = f20 + Phis#i * Phis#k * Phis#l * Phis#m * Phis#n
        )
      )
    )
  )
);
f20 = f20 / 12;
-- checked 20 Mar 2023
-- checked 22 Mar 2023

f24 = Phi1 * Phi2 * Phi3 * Phi4 * Phi5 * Phi6  / 4;
-- checked 20 Mar 2023
-- checked 22 Mar 2023
