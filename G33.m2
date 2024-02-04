-- G33.m2
-- Checks SLP for G33 (f4, f6, f10, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-33.m2"

I = ideal apply(fs, f -> clearFraction(f));
L = 6*x1 + 4*x2 + 3*x3 + 2*x4 + x5;
<< "[No. 33] has SLP? (L = " << L << ") " << flush;
-- << isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
<< isSLEm(I, L) << endl << flush;

exit(0);
