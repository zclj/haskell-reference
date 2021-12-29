module HelloTest where

import           Lib        as SUT
import           Test.HUnit

test1 = TestCase (assertEqual "for (hello \"world\")" "Fix me" (SUT.hello "world"))
