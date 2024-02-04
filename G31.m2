-- G31.m2
-- Check SLP for G31 (f8, f12, f20, f24)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-31.m2"

I = ideal apply(fs, f -> clearFraction(f));
L = 6*x1 + 4*x2 + 3*x3 + 2*x4;
<< "[No. 31] has SLP? (L = " << L << ") " << endl << flush;
-- << isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
<< isSLEm(I, L) << endl << flush;

exit(0);
