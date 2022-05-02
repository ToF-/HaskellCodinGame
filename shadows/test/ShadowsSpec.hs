module ShadowsSpec
    where

import Test.Hspec
import Shadows

spec :: SpecWith ()
spec = do
    describe "dummy" $ do
        it "should show the presence of a test harness" $ do
            2 + 2 `shouldBe` 4

    describe "next jump location" $ do
        it "should be in the middle in the given direction" $ do
            nextJumpLocation (10,10) (2,5) UR `shouldBe` (6,2) 
            nextJumpLocation (10,10) (4,7) UR `shouldBe` (7,2)
            nextJumpLocation (10,10) (0,7) UR `shouldBe` (5,2)
            nextJumpLocation (10,10) (8,7) UR `shouldBe` (9,2)
