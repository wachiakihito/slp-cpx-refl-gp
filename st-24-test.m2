-- st-24-test.m2
-- Tests st-24-def.m2 for No. 24 (f4, f6, f14)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./test-lib.m2"
load "./st-24-def.m2"

R2Q = map(QQ, R)

-- Check if expansion of Hess f4 is correct
f6expand = x^5*y + y^5*z + z^5*x - 5*x^2*y^2*z^2;
-- Checked 28 Mar 2023
<< "[Test No. 24] Hess f4 == -54 f6 ";
<< f6 == f6expand << endl;

-- Check gcd of Hess f4
<< "[Test No. 24] gcd of coefficients of Hess f4 is 54 ";
<< gcd ((flatten entries last coefficients det mat6) / R2Q) == 54 << endl;

-- Check gcd of bordered Hess f4
<< "[Test No. 24] gcd of coefficients of bordered Hessian is 9 ";
<< gcd ((flatten entries last coefficients det mat14) / R2Q) == 9 << endl;

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(24, {f4, f6, f14}, {4, 6, 14});

exit(0);
