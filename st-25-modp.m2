-- st-25.m2
-- Check SLP for No. 25 using a finite field (f6, f9, f12)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-25-def.m2"

I = ideal{f6, f9, f12};
p = 29;

<< "[No. 25] " << flush;
Imodp = modpOf(I, p);
use ring Imodp;
L =  x - y - z; -- true for p = 29
<< "[No. 25] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
<< isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
-- << isSLEm(Imodp, L) << endl << flush;

exit(0);
