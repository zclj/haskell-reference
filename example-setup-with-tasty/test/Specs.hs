module Main where

import           HelloTest
import           Test.Tasty

exampleTests :: TestTree
exampleTests = testGroup "Tests" [testGroup "Hunit" [helloUnitTest]]

main = defaultMain exampleTests

