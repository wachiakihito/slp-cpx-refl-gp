-- G25.m2
-- Checks SLP for G25 (f6, f9, f12)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-25.m2"

I = ideal apply(fs, f -> clearFraction(f));
L =  x1 + x2 - x3; -- true
<< "[No. 25] has SLP? (L = " << L << ") " << endl << flush;
-- << isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
<< isSLEm(I, L) << endl << flush;

exit(0);
