module Main where

import Lib

main :: IO ()

{-
  multi-line comment!
-}

-- main = putStrLn "new dawn, new day!"
main = putStrLn(simpleReverse ['1', '2', '3', '4'])


-- returns the reverse of a simple list
simpleReverse :: [a] -> [a]
simpleReverse [] = []
simpleReverse(x:xs) = simpleReverse xs ++ [x]

-- union two lists into a set
unionSet :: [a] -> [a] -> [a]
unionSet [] = []
unionSet(x:xs) = if [x]
