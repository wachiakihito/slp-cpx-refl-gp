-- G29.m2
-- Checks SLP for G29 (f4, f8, f12, f20)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-29.m2"

I = ideal apply(fs, f -> clearFraction(f));
L = 4*x1 + 3*x2 + 2*x3 + x4; -- true
<< "[No. 29] has SLP? (L = " << L << ") " << endl << flush;
-- << isSLE(I, L) << endl;
-- << isSLEx(I, L) << endl;
<< isSLEm(I, L) << endl;

exit(0);
