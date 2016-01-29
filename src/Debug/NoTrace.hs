-----------------------------------------------------------------------------
-- |
-- Module      :  Debug.NoTrace
-- Copyright   :  (c) Cindy Wang (CindyLinz) 2013
-- License     :  MIT
-- 
-- Maintainer  :  Cindy Wang (CindyLinz)
-- Stability   :  provisional
-- Portability :  portable
--
-- This module introduce functions that have identical types with functions in the "Debug.Trace" module.
--
-- You might write some programs like this:
--
-- > import Debug.Trace
-- >
-- > fib 0 = 1
-- > fib 1 = 1
-- > fib n = ("fib " ++ show n) `trace` fib (n - 1) + fib (n - 2)
--
-- And after you finish the debugging process, just change the line
--
-- > import Debug.Trace
--
-- into
--
-- > import Debug.NoTrace
--
-- Then all the tracing functions are silently removed.
-------------------------------------------------------------------------------
module Debug.NoTrace where

trace :: String -> a -> a
trace _ = id

traceId :: String -> String
traceId = id

traceShow :: Show a => a -> b -> b
traceShow _ = id

traceShowId :: Show a => a -> a
traceShowId = id

traceStack :: String -> a -> a
traceStack _ = id

traceIO :: String -> IO ()
traceIO _ = return ()

traceM :: Monad m => String -> m ()
traceM _ = return ()

traceShowM :: (Show a, Monad m) => a -> m ()
traceShowM _ = return ()

putTraceMsg :: String -> IO ()
putTraceMsg _ = return ()

traceEvent :: String -> a -> a
traceEvent _ = id

traceEventIO :: String -> IO ()
traceEventIO _ = return ()

traceMarker :: String -> a -> a
traceMarker _ = id

traceMarkerIO :: String -> IO ()
traceMarkerIO _ = return ()
