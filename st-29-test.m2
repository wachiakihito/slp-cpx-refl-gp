-- st-29-test.m2
-- Tests st-29-def.m2 for No. 29 (f4, f8, f12, f20)
--
-- Copyright (c) 2023 akihito wachi
-- Released under the MIT license
-- https://opensource.org/licenses/mit-license.php

-- [M1887] Heinrich Maschke.
-- Ueber die quaternare, endliche, lineare Substitutionsgruppe der Borchardt’schen Moduln. 
-- Math. Ann., 30(4):496–515, 1887.
load "./test-lib.m2"
load "./st-29-def.m2"

-- Check homogeneity and algebraically independence of f_i
testHomogIndep(29, {f4, f8, f12, f20}, {4, 8, 12, 20});

exit(0);
