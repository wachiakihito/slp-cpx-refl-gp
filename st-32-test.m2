-- st-32-test.m2
-- Tests st-32-def.m2 for No. 32 (f12, f18, f24, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./test-lib.m2"
load "./st-32-def.m2"

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(32, {f12, f18, f24, f30}, {12, 18, 24, 30});

-- Check [M1889, p326, (10)]
C12p = z1*z2*z3 * (27*z1^3*z2^3*z3^3 - (z1^3 + z2^3 + z3^3)^3);
<< "[Test No. 32] Check [M1889, p326 (10)-1] ";
<< 432*C9^2 == C6^3 - 3*C6*C12 + 2*C18 << endl;
<< "[Test No. 32] Check [M1889, p326 (10)-2] ";
<< 1728*C12p^3 == C18^2 - C12^3 << endl;

exit(0);
