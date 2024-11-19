module Main where

lista :: [Int]
lista = [30,29..1]

main = do
  print (map (3*) lista)
