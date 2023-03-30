-- st-32.m2
-- Checks SLP for No. 32 (f12, f18, f24, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-32-def.m2"

I = ideal{f12, f18, f24, f30};
L = 5*z0 + 3*z1 + 2*z2 + z3;
<< "[No. 32] has SLP? (L = " << L << ") " << flush;
-- << isSLE(I, L) << endl;
-- << isSLEx(I, L) << endl;
<< isSLEm(I, L) << endl;

exit(0);
