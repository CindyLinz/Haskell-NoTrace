module Main where

import Debug.NoTrace

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = traceStack "FIB" $ trace "fib " $ n `traceShow` fib (n - 1) + fib (n - 2)

main = do
  traceIO "begin"
  putStrLn $ show (fib 5)
  traceIO "end"
