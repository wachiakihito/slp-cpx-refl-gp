-- st-27-test.m2
-- Tests st-27-def.m2 for No. 27 (f6, f12, f30)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

load "./test-lib.m2"
load "./st-27-def.m2"

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(27, {f6, f12, f30}, {6, 12, 30});

exit(0);
