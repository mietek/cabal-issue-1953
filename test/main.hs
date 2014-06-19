module Main (main) where

import Foobar (foobar)
import System.Exit (exitFailure, exitSuccess)

main :: IO ()
main =
    case foobar of
      42 -> exitSuccess
      _ -> exitFailure
