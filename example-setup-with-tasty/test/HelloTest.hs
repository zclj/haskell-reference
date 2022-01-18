module HelloTest where

import           Data.List
import           Lib                   as SUT
import           Test.Tasty
import           Test.Tasty.HUnit      as HU
import           Test.Tasty.QuickCheck as QC

-- Unit tests - with HUnit

helloUnitTest = HU.testCase "Unit test example" $
    assertEqual "for (hello \"world\")"
                "Hello, world" (SUT.hello "world")

helloFailingUnitTest = HU.testCase "Unit test failing example" $
    assertEqual "for (hello \"world\")"
                "Hello, Fix me" (SUT.hello "world")

-- Properties - with QuickCheck

containsProperty = QC.testProperty "hello result contains input" $
  \s -> isInfixOf s (SUT.hello (s :: String))

notContainsProperty = QC.testProperty "hello result does not contain input (example of failing property)" $
  \s -> (s::String) /= "" QC.==>
        not $ (s :: String) `isInfixOf` (SUT.hello (s :: String))
