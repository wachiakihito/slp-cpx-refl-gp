-- G32-modp.m2
-- Checks SLP for G32 using a finite field (f12, f18, f24, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-32.m2"

I = ideal apply(fs, f -> clearFraction(f));
p = 83;

<< "[No. 32] " << flush;
Imodp = modpOf2(I, p);
use ring Imodp;
L = 5*x1 + 4*x2 + 3*x3 + 2*x4; -- true for p = 83
<< "[No. 32] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);
