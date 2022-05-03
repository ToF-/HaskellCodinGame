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
        describe "should be in the middle in the given direction" $ do
            it "in Right direction" $ do
                nextJumpLocation (10,10) (2,5) R `shouldBe` (6,5) 
                nextJumpLocation (10,10) (4,7) R `shouldBe` (7,7)
                nextJumpLocation (10,10) (0,7) R `shouldBe` (5,7)
                nextJumpLocation (10,10) (8,7) R `shouldBe` (9,7)
                nextJumpLocation (11,11) (2,5) R `shouldBe` (6,5)
            it "in Left direction" $ do
                nextJumpLocation (10,10) (2,5) L `shouldBe` (0,5) 
                nextJumpLocation (10,10) (4,7) L `shouldBe` (1,7) 
                nextJumpLocation (10,10) (1,7) L `shouldBe` (0,7) 
                nextJumpLocation (10,10) (8,7) L `shouldBe` (3,7) 
                nextJumpLocation (11,11) (9,7) L `shouldBe` (4,7) 
