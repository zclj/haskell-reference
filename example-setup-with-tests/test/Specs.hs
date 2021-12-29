module Main where

import           HelloTest
-- import qualified System.Exit as Exit
import           Test.HUnit

exampleTests = TestList [TestLabel "test1" test1]

main :: IO Counts
main = do runTestTT exampleTests

{-
This can be used to integrate with 'cabal test'. In addition, comment out the above 'main' and include the import of 'Exit'

main = do
  count <- runTestTT exampleTests
  if failures count > 0
    then Exit.exitFailure
    else return ()

-}
