module Main where
  import Control.Monad
  import System.Cmd
  import System.Environment

  main = do
    args <- getArgs
    rawSystem "mv" (if null args then ["."] 
      else (args ++ ["/Users/jaiyalas/.Trash/"]) )

