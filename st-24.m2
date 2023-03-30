-- st-24.m2
-- Checks SLP for No. 24 (f4, f6, f14)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-24-def.m2"

I = ideal{f4, f6, f14};
L =  x + y - z; -- true
<< "[No. 24] has SLP? (L = " << L << ") " << endl << flush;
<< isSLE(I, L) << endl << flush;
-- << isSLEx(I, L) << endl << flush;
-- << isSLEm(I, L) << endl << flush;

exit(0);
