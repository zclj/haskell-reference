module Main where

import           HelloTest
import           Test.Tasty

exampleTests :: TestTree
exampleTests = testGroup "Tests" [unitTests, properties]

unitTests = testGroup "Hunit" [helloUnitTest, helloFailingUnitTest]
properties = testGroup "QuickCheck" [containsProperty, notContainsProperty]

main = defaultMain exampleTests

