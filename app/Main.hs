module Main where

import Lib
import Data.List

main :: IO ()

{-
  multi-line comment!
-}

-- main = putStrLn "new dawn, new day!"
main = do
    print $ simpleReverse [1, 2, 3, 4]
    print $ listUnion [1, 2, 3] [2, 3, 4]
    print $ insertionSort [4, 5, 1, 0, 8, 7, 3]


-- returns the reverse of a simple list
simpleReverse :: [a] -> [a]
simpleReverse [] = []
simpleReverse(x:xs) = simpleReverse xs ++ [x]

-- union two lists into a set (remove duplicates)
listUnion :: Eq a => [a] -> [a] -> [a]
listUnion x y = nub (x ++ y)

-- sort list in ascending order
place :: Int -> [Int] -> [Int]
place x [] = [x]
place x (y:ys) = if x < y
                   then x:y:ys
                 else y : place x ys

insertionSort :: [Int] -> [Int]
insertionSort [x] = [x]
insertionSort (x:xs) = place x (insertionSort xs)
