-- G31-modp.m2
-- Check SLP for G31 using a finite field (f8, f12, f20, f24)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-31.m2"

I = ideal apply(fs, f -> clearFraction(f));
p = 61;

<< "[No. 31] " << flush;
Imodp = modpOf2(I, p);
use ring Imodp;

L = 6*x1 + 4*x2 + 3*x3 + 2*x4; -- true for p = 61
<< "[No. 31] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);
