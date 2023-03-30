-- st-24.m2
-- Checks SLP for No. 24 using a finite field (f4, f6, f14)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-24-def.m2"

I = ideal{f4, f6, f14};
p = 7;

<< "[No. 24] " << flush;
Imodp = modpOf(I, p);
use ring Imodp;
L =  x + y - z; -- true for p = 7
<< "[No. 24] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
<< isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
-- << isSLEm(Imodp, L) << endl << flush;

exit(0);
