-- st-25-test.m2
-- Tests st-25-def.m2 for No. 25 (f6, f9, f12)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./test-lib.m2"
load "./st-25-def.m2"

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(25, {f6, f9, f12}, {6, 9, 12});

exit(0);
