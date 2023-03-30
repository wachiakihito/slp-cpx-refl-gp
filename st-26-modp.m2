-- st-26.m2
-- Checks SLP for No. 26 using a finite field (f6, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-26-def.m2"

I = ideal{f6, f12, f18};
p = 41;

<< "[No. 26] " << flush;
Imodp = modpOf(I, p);
use ring Imodp;
L = 4*x + 2*y + z; -- true for p = 41
<< "[No. 26] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
<< isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
-- << isSLEm(Imodp, L) << endl << flush;

exit(0);
