module Main where

import Errors
import Control.Exception (throwIO)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  throwIO (RuntimeError "You suck at coding!")
