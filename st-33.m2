-- st-33.m2
-- Checks SLP for No. 33 (f4, f6, f10, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-33-def.m2"

I = ideal{f4, f6, f10, f12, f18};
L = 6*y0 + 4*y1 + 3*y2 + 2*y3 + y4;
<< "[No. 33] has SLP? (L = " << L << ") " << flush;
-- << isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
<< isSLEm(I, L) << endl << flush;

exit(0);
