module HelloTest where

import           Lib              as SUT
import           Test.Tasty
import           Test.Tasty.HUnit as HU

helloUnitTest = HU.testCase "Unit test example" $
    assertEqual "for (hello \"world\")"
                "Hello, world" (SUT.hello "world")

helloFailingUnitTest = HU.testCase "Unit test failing example" $
    assertEqual "for (hello \"world\")"
                "Hello, Fix me" (SUT.hello "world")
