module Main where

import           Sandbox

import           Test.Tasty
import           Test.Tasty.HUnit
import           Test.Tasty.QuickCheck

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [properties, unitTests]

properties :: TestTree
properties = testGroup "Properties"
  [ testProperty "(no properties)" $
    (const True :: Bool -> Bool)
  ]

unitTests :: TestTree
unitTests = testGroup "Unit tests"
  [ testCase "(no unit tests)" $
    True @?= True
  ]
