module Main (main) where
  import Control.Monad
  import Data.List
  import System.Directory
  import System.Environment

  import System.Console.ANSI 
 
  main = do
    args <- getArgs
    mapM_ tlist (if null args then ["."] else args)
  
  tlist path =
    visit (if "/" `isPrefixOf` path then "" else ".") "" "" "" path
  
  visit _ _ _ _ ".git" = do
    setSGR [SetColor Foreground Vivid Yellow]
    putStrLn "A .git/ directory have been detected "
    setSGR [Reset]

  visit path leader tie arm node = do
    putStrLn (leader ++ arm ++ tie ++ node)
    visitChildren (path ++ "/" ++ node) (leader ++ extension)
      where extension = case arm of ""  -> ""; "`" -> "    "; _   -> "|   "
  
  visitChildren path leader =
    whenM (doesDirectoryExist path) $ do
      contents <- getDirectoryContents path
        -- `catch` (\e -> return [show e])
      let visibles = sort . filter (`notElem` [".", ".."]) $ contents
          arms = replicate (length visibles - 1) "|" ++ ["`"]
      zipWithM_ (visit path leader "-- ") arms visibles
  
  whenM mtest ma = mtest >>= flip when ma
  


