-- st-33-def.m2
-- Defines fundamental invariants for No. 33 (f4, f6, f10, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [B] Heinrich Burkhardt.
-- Untersuchungen aus dem Gebiete der hyperelliptischen Modulfunctionen.
-- Math. Ann., 38(2):161–224, 1891.

-- Fundamental invariants are given in [B, pp. 208-209, (1)-(5)].

-- returns list of all permutations of as
perms = as -> (
  if (#as == 0) then return {};
  if (#as == 1) then return({as});
  res := {};
  for i in (0..#as-1) do (
    b := as_i;
    bs := take(as, i) | drop(as,i+1);
    res = res | apply(perms(bs), cs -> prepend(b, cs))
  );
  res
)

-- monomial symmetric polynomial
monosym = (vs, is) -> (
  sum apply(unique perms is, js -> (
    product apply(#js, k -> (vs#k) ^ (js#k))
)))


R = QQ[y0, y1, y2, y3, y4];
Y = is -> monosym({y1, y2, y3, y4}, is);

-- [B, p208 (1)]
f4 = y0^4 + 8*y0*Y(3,0,0,0) + 48*Y(1,1,1,1);
-- checked 20 Mar 2023

-- [B, p208 (2)]
f6 = y0^6 - 20*y0^3*Y(3,0,0,0) + 360*y0^2*y1*y2*y3*y4 + 80*Y(3,3,0,0) - 
     8*Y(6,0,0,0);
-- checked 20 Mar 2023

-- [B, p208 (3)]
f10 = y0^6*Y(1,1,1,1) - y0^4*Y(3,3,0,0) + y0^3*Y(4,1,1,1) +
      9*y0^2*Y(2,2,2,2) + y0*Y(6,3,0,0) - 6*y0*Y(3,3,3,0) -
      2*Y(7,1,1,1) + 2*Y(4,4,1,1);
-- checked 20 Mar 2023

-- [B, p208 (4)]
f12 = 3*y0^8*Y(1,1,1,1) + 5*y0^6*Y(3,3,0,0) - 33*y0^5*Y(4,1,1,1) +
      243*y0^4*Y(2,2,2,2) - y0^3*Y(6,3,0,0) -
      102*y0^3*Y(3,3,3,0) + 30*y0^2*Y(7,1,1,1) +
      78*y0^2*Y(4,4,1,1) - 108*y0*Y(5,2,2,2) -
      4*Y(9,3,0,0) + 16*Y(6,6,0,0) - 8*Y(6,3,3,0) +
      168*Y(3,3,3,3);
-- checked 20 Mar 2023

-- [B, p209 (5)]
f18 = 3*y0^10*Y(2,2,2,2) - 4*y0^9*Y(3,3,3,0) + 6*y0^8*Y(4,4,1,1) - -- correction, 12 -> 6
      18*y0^7*Y(5,2,2,2) - y0^6*Y(6,6,0,0) + 10*y0^6*Y(6,3,3,0) +  -- correction, 36->18, 5223 -> 5222
      96*y0^6*Y(3,3,3,3) - 12*y0^5*Y(7,4,1,1) -
      90*y0^5*Y(4,4,4,1) + 27*y0^4*Y(8,2,2,2) +
      108*y0^4*Y(5,5,2,2) + 2*y0^3*Y(9,6,0,0) - 8*y0^3*Y(9,3,3,0) +
      4*y0^3*Y(6,6,3,0) - 168*y0^3*Y(6,3,3,3) +
      6*y0^2*Y(10,4,1,1) - 24*y0^2*Y(7,7,1,1) +
      12*y0^2*Y(7,4,4,1) + 315*y0^2*Y(4,4,4,4) -
      12*y0*Y(11,2,2,2) + 18*y0*Y(8,5,2,2) -           -- correction +12 -> -12
      72*y0*Y(5,5,5,2) - Y(12,6,0,0) + 2*Y(12,3,3,0) + -- correction -27 -> -72
      2*Y(9,9,0,0) - 2*Y(9,6,3,0) - 8*Y(9,3,3,3) +     -- correction 6333 -> 9333
      6*Y(6,6,6,0) + 8*Y(6,6,3,3);
-- checked 20 Mar 2023
