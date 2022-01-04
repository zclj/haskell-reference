module Main where

import           HelloTest
import           Test.Tasty

exampleTests :: TestTree
exampleTests = testGroup "Tests" [unitTests]

unitTests = testGroup "Hunit" [helloUnitTest, helloFailingUnitTest]

main = defaultMain exampleTests

