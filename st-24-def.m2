-- st-24-def.m2
-- Defines fundamental invariants for No. 24 (f4, f6, f14)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [MBD] G. A. Miller, H. F. Blichfeldt, and L. E. Dickson. 
-- Theory and applications of finite groups. 
-- Dover Publications Inc., New York, 1961.

-- Fundamental invariants are given in [MBD, p. 254, (J)]

R = QQ[x,y,z];

f4 = x^3*z + y^3*x + z^3*y;

mat6 = matrix {
  {diff(x*x,f4), diff(x*y,f4), diff(x*z,f4)},
  {diff(y*x,f4), diff(y*y,f4), diff(y*z,f4)},
  {diff(z*x,f4), diff(z*y,f4), diff(z*z,f4)}
};
f6 = (det mat6) / (-54);

mat14 = matrix{
  {diff(x*x,f4), diff(x*y,f4), diff(x*z,f4), diff(x,f6)},
  {diff(y*x,f4), diff(y*y,f4), diff(y*z,f4), diff(y,f6)},
  {diff(z*x,f4), diff(z*y,f4), diff(z*z,f4), diff(z,f6)},
  {diff(x,f6),   diff(y,f6),   diff(z,f6),   0}
};
f14 = (det mat14) / 9;
-- checked 20 Mar 2023
