module Chapter7.Chapter7_7Spec (spec) where

import Test.Hspec
import Chapter7.Chapter7_7

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Chapter7_7" $ do
    it "List Example" $
      [5] `shouldBe` 5:[]
    it "List Example2" $
      [4, 5] `shouldBe` 4:(5:[])
    it "List Example3" $
      [3, 4, 5] `shouldBe` 3:(4:(5:[]))
    it "List Example4" $
      [3, 4, 5] `shouldBe` 3:4:5:[]
    it "MyList" $
      5 `Cons` Empty `shouldBe` Cons 5 Empty
    it "MyList2" $
      4 `Cons` (5 `Cons` Empty) `shouldBe` Cons 4 (Cons 5 Empty)
