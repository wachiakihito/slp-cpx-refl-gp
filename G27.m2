-- G27.m2
-- Checks SLP for G27 (f6, f12, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./def-27.m2"
-- hilb = hilb2 -- the coefficient ring is an algebraic extension of QQ

I = ideal apply(fs, f -> clearFraction(f));
L = x1 + 2*x2 + x3 -- true
<< "[No. 27] has SLP? (L = " << L << ") " << endl << flush;
-- << isSLE(I, L) << endl;
-- << isSLEx(I, L) << endl;
<< isSLEm(I, L) << endl;

exit(0);
