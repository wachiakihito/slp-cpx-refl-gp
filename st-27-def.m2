-- st-27-def.m2
-- Defines fundamental invariants for No. 27 (f6, f12, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [MBD] G. A. Miller, H. F. Blichfeldt, and L. E. Dickson. 
-- Theory and applications of finite groups. 
-- Dover Publications Inc., New York, 1961.

-- Fundamental invariant are given in [MBD, p. 254].

-- t = \frac{-9 \pm \sqrt{-15}}{20}
K = QQ[t] / ideal(50*t^2+45*t+27);
R = K[x,y,z];

f6 = (x^2 + y*z)^3 + t*x*(x^5 + y^5 + z^5 + 5*x*y^2*z^2 - 5*x^3*y*z);

mat12 = matrix {
  {diff(x*x, f6), diff(x*y, f6), diff(x*z, f6)},
  {diff(y*x, f6), diff(y*y, f6), diff(y*z, f6)},
  {diff(z*x, f6), diff(z*y, f6), diff(z*z, f6)}
};
f12 = det mat12;

mat30 = matrix {
  {diff(x*x, f6), diff(x*y, f6), diff(x*z, f6), diff(x, f12)},
  {diff(y*x, f6), diff(y*y, f6), diff(y*z, f6), diff(y, f12)},
  {diff(z*x, f6), diff(z*y, f6), diff(z*z, f6), diff(z, f12)},
  {diff(x, f12),  diff(y, f12),  diff(z, f12),  0}
};
f30 = det mat30;
-- checked 20 Mar 2023
