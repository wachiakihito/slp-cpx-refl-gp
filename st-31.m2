-- st-31.m2
-- Check SLP for No. 31 (f8, f12, f20, f24)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-31-def.m2"

I = ideal{f8, f12, f20, f24};
L = 9*z1 + 3*z2 + 2*z3 + z4;
<< "[No. 31] has SLP? (L = " << L << ") " << endl << flush;
<< isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
-- << isSLEm(I, L) << endl << flush;

exit(0);
