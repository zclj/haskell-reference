module HelloTest where

import           Lib              as SUT
import           Test.Tasty
import           Test.Tasty.HUnit as HU

helloUnitTest = HU.testCase "Yeah" $
    assertEqual "for (hello \"world\")"
                "Hello, world" (SUT.hello "world")

-- helloUnitTests = testGroup "Unit tests for Hello module"
--   []
