-- st-29.m2
-- Checks SLP for No. 29 (f4, f8, f12, f20)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-29-def.m2"

I = ideal{f4, f8, f12, f20};
L = 4*z1 + 3*z2 + 2*z3 + z4; -- true
<< "[No. 29] has SLP? (L = " << L << ") " << endl << flush;
-- << isSLE(I, L) << endl;
-- << isSLEx(I, L) << endl;
<< isSLEm(I, L) << endl;

exit(0);
