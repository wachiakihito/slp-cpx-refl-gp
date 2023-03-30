-- st-26.m2
-- Checks SLP for No. 26 (f6, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-26-def.m2"

I = ideal{f6, f12, f18};
L = x + 2*y - z; -- true
<< "[No. 26] has SLP? (L = " << L << ") " << endl << flush;
<< isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
-- << isSLEm(I, L) << endl << flush;

exit(0);
