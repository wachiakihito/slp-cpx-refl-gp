-- st-26-def.m2
-- Defines fundamental invariants for No. 26 (f6, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [ST] G. C. Shephard and J. A. Todd.
-- Finite unitary reflection groups. 
-- Canadian J. Math., 6:274–304, 1954.
--
-- [S] T. A. Springer. Invariant theory.
-- Lecture Notes in Mathematics, Vol. 585. Springer-Verlag, Berlin, 1977.

-- Fundamental invariant are given in [ST, pp. 286-287].
-- It uses fundamental invariants for No. 25, which is given in [S, pp. 103-104].

-- R = QQ[x,y,z]

-- No. 25 (f6, f9, f12)
load "./st-25-def.m2"
-- f6 = (x^3 + y^3 + z^3)^2 - 12*(x^3*y^3 + x^3*z^3 + y^3*z^3);
-- f9 = (x^3 - y^3)*(x^3 - z^3)*(y^3 - z^3);
-- f12 = (x^3 + y^3 + z^3)*( (x^3 + y^3 + z^3)^3 + 216*x^3*y^3*z^3 );
-- checked 20 Mar 2023
-- these three formulas will be removed (24 Mar 2023)

-- No. 26
f18 = 432*f9^2 - f6^3 + 3*f6*f12 
-- checked 20 Mar 2023
