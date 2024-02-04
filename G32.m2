-- G32.m2
-- Checks SLP for G32 (f12, f18, f24, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-32.m2"

I = ideal apply(fs, f -> clearFraction(f));
L = 5*x1 + 4*x2 + 3*x3 + 2*x4;
<< "[No. 32] has SLP? (L = " << L << ") " << flush;
-- << isSLE(I, L) << endl;
-- << isSLEx(I, L) << endl;
<< isSLEm(I, L) << endl;

exit(0);
