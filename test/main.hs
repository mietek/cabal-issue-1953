module Main (main) where

import Foobar (foobar)
import System.Environment (getArgs)
import System.Exit (exitFailure, exitSuccess)

main :: IO ()
main = do
    args <- getArgs
    case (args, foobar) of
      (["42"], 42) -> exitSuccess
      _ -> exitFailure
