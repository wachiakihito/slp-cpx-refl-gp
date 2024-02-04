-- G24-modp.m2
-- Checks SLP for G24 using a finite field (f4, f6, f14)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-24.m2"

I = ideal apply(fs, f -> clearFraction(f));
p = 23;

<< "[No. 24] " << flush;
Imodp = modpOf(I, p);
use ring Imodp;
L = x1 + x2 - x3; -- true for p = 23
<< "[No. 24] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);
