-- st-27.m2
-- Checks SLP for No. 27 (f6, f12, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-27-def.m2"
hilb = hilb2 -- the coefficient ring is an algebraic extension of QQ

I = ideal{f6, f12, f30};
L = x + y - z -- true
<< "[No. 27] has SLP? (L = " << L << ") " << endl << flush;
-- << isSLE(I, L) << endl;
-- << isSLEx(I, L) << endl;
<< isSLEm(I, L) << endl;

exit(0);
