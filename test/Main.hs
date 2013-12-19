module Main where

import Debug.NoTrace

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = "fib " `trace` n `traceShow` fib (n - 1) + fib (n - 2)

main = do
  putTraceMsg "begin"
  putStrLn $ show (fib 5)
  putTraceMsg "end"
