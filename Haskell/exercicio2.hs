module Main where

fatorial :: Int -> Int
fatorial x
  | x > 0 = x * fatorial (x - 1)
  | x == 0 = 1
  | otherwise = x*2
  

main = do
  print (fatorial 4)
  print (fatorial (-4))
