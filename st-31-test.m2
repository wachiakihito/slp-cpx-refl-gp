-- st-31-test.m2
-- Tests st-31-def.m2 for No. 31 (f8, f12, f20, f24)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./test-lib.m2"
load "./st-31-def.m2"

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(31, {f8, f12, f20, f24}, {8, 12, 20, 24});

-- Check [M1887, p505 (12)]
<< "[Test No. 31] Check [M1887, p505 (12)-1] ";
<< sum Phis == 0 << endl;

<< "[Test No. 31] Check [M1887, p505 (12)-2] ";
<< f8 == 
  (z1^8 + z2^8 + z3^8 + z4^8) +
  14*((z1*z2)^4 +(z1*z3)^4 +(z1*z4)^4 +(z2*z3)^4 +(z2*z4)^4 +(z3*z4)^4) +
  168*(z1*z2*z3*z4)^2 << endl;
  
<< "[Test No. 31] Check [M1887, p505 (12)-3] ";
<< f12 == 
  (z1^12 + z2^12 + z3^12 + z4^12) -
  33*(
    sum flatten for zi in {z1,z2,z3,z4} list (
      for zk in {z1,z2,z3,z4} list ( 
	if zi == zk then ( 0 ) else ( zi^8 * zk^4 )))) +
  330*((z1*z2*z3)^4 + (z1*z2*z4)^4 + (z1*z3*z4)^4 + (z2*z3*z4)^4) +
  792*(z1*z2*z3*z4)^2 * (z1^4 + z2^4 + z3^4 + z4^4) << endl;

<< "[Test No. 31] Check [M1887, p505 (12)-4] ";
<< (9*f8^2 ==
  sum flatten flatten flatten flatten  for i from 0 to 2 list (
    for k from i+1 to 5 list (
      for l from k+1 to 5 list (
        for m from l+1 to 5 list (
	  Phis#i * Phis#k * Phis#l * Phis#m ))))) << endl;

exit(0);
