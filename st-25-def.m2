-- st-25-def.m2
-- Defines fundamental invariants for No. 25 (f6, f9, f12)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [S] T. A. Springer. Invariant theory.
-- Lecture Notes in Mathematics, Vol. 585. Springer-Verlag, Berlin, 1977.

-- Fundamental invariant f6 is given in [S, p. 103],
-- f9 and f12 are given in [S, p. 104].

R = QQ[x,y,z]

f6 = (x^3 + y^3 + z^3)^2 - 12*(x^3*y^3 + x^3*z^3 + y^3*z^3);
f9 = (x^3 - y^3)*(x^3 - z^3)*(y^3 - z^3);
f12 = (x^3 + y^3 + z^3)*( (x^3 + y^3 + z^3)^3 + 216*x^3*y^3*z^3 );
-- checked 20 Mar 2023
