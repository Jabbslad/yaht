module Main
  where
    
import IO

main = do
  putStrLn "Enter number: "
  number <- getLine
  let num = read number :: Int
  putStrLn "Enter number: "
  character <- getLine
  let char = read character :: Char
  putStrLn (show (Pair num char))
  
data Pair a b = Pair a b
  deriving Show
