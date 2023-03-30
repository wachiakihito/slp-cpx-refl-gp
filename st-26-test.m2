-- st-26-test.m2
-- Tests st-26-def.m2 for No. 26 (f6, f12, f18)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./test-lib.m2"
load "./st-26-def.m2"

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(26, {f6, f12, f18}, {6, 12, 18});

exit(0);
