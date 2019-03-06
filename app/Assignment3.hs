module Assignment3 where

findMax :: Ord a => [a] -> a
findMax [x] = x
findMax(x:x':xs) = findMax ((if x > x' then x else x'):xs)






