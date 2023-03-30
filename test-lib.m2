-- test-lib.m2
-- Library used in 'st-??-test.m2'
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- Check homogeneity and algebraically independence of fundamental
-- invariants
testHomogIndep = (no, fs, degs) -> (
  -- Check homogeneity of f_i
  for i from 0 to #fs-1 do (
    << "[Test No. " << no << "] f" << degs#i << " is homogeneous? ";
    << unique flatten (terms fs#i / degree / first) == {degs#i} << endl;
  );
  -- Check algebraically independence of fundamental invariants
  << "[Test No. " << no << "] algebraically independence of f_i? ";
  << det jacobian matrix {fs} != 0 << endl;
)
