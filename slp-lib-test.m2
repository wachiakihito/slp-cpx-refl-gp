-- slp-lib-test.m2
-- Tests slp-lib.m2
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./slp-lib.m2"

-- Complete symmetric function
H = (vs, d) -> (
  if (#vs == 0) then (
    0
  ) else if (d == 0) then ( 
    1
  ) else (
    H(drop(vs, 1), d) + H(vs, d-1) * (first vs)
  )
)

-- test if isSLE, isSLEx and isSLEm and their mod p versionreturn the
-- same result over QQ
<< "[Test slp-lib.m2] Check isSLE/isSLEx/isSLEm and mod p version return the same result ";
<< endl;
R = QQ[x..z]
for m in {6,7,8,9,10} do (
  use R;
  << "QQ[x,y,z] / (";
  << "h" << m << ",";
  << "h" << m+3 << ",";
  << "h" << m+7 << ") " << flush;
  I = ideal apply({m,m+3,m+7}, d -> H({x,y,z}, d));
  elt = x + 2*y - z;
  r1 = isSLE(I, elt);
  r2 = isSLEx(I, elt);
  r3 = isSLEm(I, elt);
  Imodp = modpOf(I, 103); -- prime number is hard coded
  eltmodp = (map(ring Imodp, R)) elt;
  r4 = isSLE(Imodp, eltmodp);
  r5 = isSLEx(Imodp, eltmodp);
  r6 = isSLEm(Imodp, eltmodp);
  Imodp2 = modpOf2(I, 103); -- prime number is hard coded
  eltmodp2 = (map(ring Imodp2, R)) elt;
  r7 = isSLE(Imodp2, eltmodp2);
  r8 = isSLEx(Imodp2, eltmodp2);
  r9 = isSLEm(Imodp2, eltmodp2);
  r = (#(unique {r1, r2, r3, r4, r5, r6, r7, r8, r9}) == 1);
  << r;
  if (r) then (
    if (r1) then ( << " (SLP)"; )
    else         ( << " (not SLP)"; )
  );
  << endl;
)
<< endl;

-- test if isSLE, isSLEx and isSLEm return the same result over F101
<< "[Test slp-lib.m2] Check isSLE, isSLEx and isSLEm return the same result ";
<< endl;
R = (ZZ/101)[x..z]
for m in {7,8,9,10,11,12} do (
  << "F101[x,y,z] / (";
  << "h" << m << ",";
  << "h" << m+3 << ",";
  << "h" << m+7 << ") " << flush;
  I = ideal apply({m,m+3,m+7}, d -> H({x,y,z}, d));
  elt = x + 2*y - z;
  r1 = isSLE(I, elt);
  r2 = isSLEx(I, elt);
  r3 = isSLEm(I, elt);
  r = (r1 == r2) and (r2 == r3);
  << r;
  if (r) then (
    if (r1) then ( << " (SLP)"; )
    else         ( << " (not SLP)"; )
  );
  << endl;
)
<< endl;

-- test if isSLE, isSLEx and isSLEm return the same result over
-- an algebraic extension of QQ
<< "[Test slp-lib.m2] Check isSLE, isSLEx and isSLEm return the same result ";
<< endl;
R = (QQ[t]/ideal(t^3+t+1))[x..z]
hilb = hilb2
for m in {7,8,9,10,11,12} do (
  << "QQ(t)[x,y,z] / (";
  << "h" << m << ",";
  << "h" << m+3 << ",";
  << "h" << m+7 << ") " << flush;
  I = ideal apply({m,m+3,m+7}, d -> H({x,y,z}, d));
  elt = x + 2*y - z;
  r1 = isSLE(I, elt);
  r2 = isSLEx(I, elt);
  r3 = isSLEm(I, elt);
  r = (r1 == r2) and (r2 == r3);
  << r;
  if (r) then (
    if (r1) then ( << " (SLP)"; )
    else         ( << " (not SLP)"; )
  );
  << endl;
)
<< endl;

exit(0);
