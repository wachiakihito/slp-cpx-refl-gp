-- st-25.m2
-- Checks SLP for No. 25 (f6, f9, f12)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-25-def.m2"

I = ideal{f6, f9, f12};
L =  x + y - z; -- true
<< "[No. 25] has SLP? (L = " << L << ") " << endl << flush;
<< isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
-- << isSLEm(I, L) << endl << flush;

exit(0);
