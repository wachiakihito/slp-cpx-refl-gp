-- st-29-def.m2
-- Defines fundamental invariants for No. 29 (f4, f8, f12, f20)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [ST] G. C. Shephard and J. A. Todd.
-- Finite unitary reflection groups. 
-- Canadian J. Math., 6:274–304, 1954.

-- [M1887] Heinrich Maschke.
-- Ueber die quaternare, endliche, lineare Substitutionsgruppe der Borchardt’schen Moduln. 
-- Math. Ann., 30(4):496–515, 1887.

-- Fundamental invariants are given in [ST, p. 287], where fundamental invariants for No. 31,
-- which are given in [M1887, p. 505, (12)], are used.

R = QQ[z1, z2, z3, z4]

-- No. 31 (f8, f12, f20, f24)
load "./st-31-def.m2"

-- No. 29
f4 = Phi1;
-- checked 20 Mar 2023
-- checked 22 Mar 2023
