-- st-33.m2
-- Checks SLP for No. 33 using a finite field  (f4, f6, f10, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"
load "./st-33-def.m2"

I = ideal{f4, f6, f10, f12, f18};
p = 47;

<< "[No. 33] " << flush;
Imodp = modpOf2(I, p);
use ring Imodp;
L = 6*y0 + 4*y1 + 3*y2 + 2*y3 + y4; -- true for p = 47	
<< "[No. 33] has SLP? (L = " << L << ") " << flush;
<< "(mod " << p << ")" << endl << flush;
-- << isSLE(Imodp, L) << endl << flush;
-- << isSLEx(Imodp, L) << endl << flush;
<< isSLEm(Imodp, L) << endl << flush;

exit(0);

