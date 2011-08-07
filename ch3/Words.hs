module Main
    where

--import IO

askForWords = do
    putStrLn "Please enter a word:"
    word <- getLine
    if word == ""
        then return []
        else do
            rest <- askForWords
            return (word : rest)
  