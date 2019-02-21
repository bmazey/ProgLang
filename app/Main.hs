module Main where

import Lib
import Data.List

main :: IO ()

{-
  this is a multi-line comment!
-}

main = do
    print $ simpleReverse [1, 2, 3, 4]
    print $ listUnion [1, 2, 3] [2, 3, 4]
    print $ insertionSort [4, 5, 1, 0, 8, 7, 3]
    print $ minMax [11, 12, 13, 14]
    print $ permute ['a', 'b', 'c']
    print $ permute [1, 2, 3]


-- returns the reverse of a simple list
simpleReverse :: [a] -> [a]
simpleReverse [] = []
simpleReverse(x:xs) = simpleReverse xs ++ [x]

-- union two lists into a set (remove duplicates, different notation)
listUnion :: Eq a => [a] -> [a] -> [a]
listUnion x y = nub (x ++ y)

-- sort list in ascending order
place :: Int -> [Int] -> [Int]
place x [] = [x]
place x (y:ys) = if x < y
                   then x:y:ys
                 else y : place x ys

insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort [x] = [x]
insertionSort (x:xs) = place x (insertionSort xs)

-- return largest and smallest numbers in list
minMax :: [Int] -> [Int]
minMax [] = []
minMax (x:xs) = [minimum xs, maximum xs]

-- return all permutations of a list
permute :: Eq a => [a] -> [[a]]
permute [] = [[]]
permute xs = do x <- xs
                let l = delete x xs
                ls <- permute l
                return $ x : ls