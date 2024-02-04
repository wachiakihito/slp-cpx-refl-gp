-- G25-modp.m2
-- Check SLP for G25 using a finite field (f6, f9, f12)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-25.m2"

I = ideal apply(fs, f -> clearFraction(f));
p = 29;

<< "[No. 25] " << flush;
Imodp = modpOf(I, p);
use ring Imodp;
L =  x1 + x2 - x3; -- true for p = 29
<< "[No. 25] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);
