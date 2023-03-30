-- st-29.m2
-- Check SLP for No. 29 using a finite field (f4, f8, f12, f20)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-29-def.m2"

I = ideal{f4, f8, f12, f20};
p = 43;

<< "[No. 29] " << flush;
Imodp = modpOf2(I, p);
use ring Imodp;
L = 4*z1 + 3*z2 + 2*z3 + z4; -- true for p = 43
<< "[No. 29] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);
