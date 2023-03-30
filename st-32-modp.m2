-- st-32.m2
-- Checks SLP for No. 32 using a finite field (f12, f18, f24, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-32-def.m2"

I = ideal{f12, f18, f24, f30};
p = 83;

<< "[No. 32] " << flush;
Imodp = modpOf2(I, p);
use ring Imodp;
L = 5*z0 + 3*z1 + 2*z2 + z3; -- true for p = 83
<< "[No. 32] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);

