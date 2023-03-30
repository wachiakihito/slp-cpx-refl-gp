-- st-31.m2
-- Check SLP for No. 31 using a finite field (f8, f12, f20, f24)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-31-def.m2"

I = ideal{f8, f12, f20, f24};
p = 61;

<< "[No. 31] " << flush;
Imodp = modpOf2(I, p);
use ring Imodp;
L = 9*z1 + 3*z2 + 2*z3 + z4; -- true for p = 61
<< "[No. 31] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);

