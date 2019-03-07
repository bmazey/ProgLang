module Assignment3 where

import Lib
import Data.List

-- given a list, find the maximum
findMax :: Ord a => [a] -> a
findMax [x] = x
findMax (x:x':xs) = findMax ((if x > x' then x else x'):xs)


-- why doesn't this work?
isEmptyIntersection :: Eq a => [a] -> [a] -> Bool
isEmptyIntersection [] _ = True
isEmptyIntersection _ [] = True
imEmptyIntersection (x:xs) y
  | x `elem` y = False
  | otherwise = isEmptyIntersection xs y


-- union of two lists into set (same question from last assignment?)
unionLists :: Eq a => [a] -> [a] -> [a]
unionLists x y = nub (x ++ y)


-- return tail of list (final element)
getFinalElement :: [a] -> a
getFinalElement [x] = x
getFinalElement (x:xs) = getFinalElement xs