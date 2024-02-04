-- G33-modp.m2
-- Checks SLP for G33 using a finite field  (f4, f6, f10, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-33.m2"

I = ideal apply(fs, f -> clearFraction(f));
p = 73;
<< "[No. 33] " << flush;
Imodp = modpOf2(I, p);
use ring Imodp;
L = 6*x1 + 4*x2 + 3*x3 + 2*x4 + x5; -- true for p = 73
<< "[No. 33] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);
