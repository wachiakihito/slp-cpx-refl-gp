-- G26-modp.m2
-- Checks SLP for G26 using a finite field (f6, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-26.m2"

I = ideal apply(fs, f -> clearFraction(f));
p = 41;

<< "[No. 26] " << flush;
Imodp = modpOf(I, p);
use ring Imodp;
L = x1 + 2*x2 - x3; -- true for p = 41
<< "[No. 26] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);
