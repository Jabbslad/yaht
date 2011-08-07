module Main
    where
    
import IO
    
main = do
    xs <- askForNumbers
    putStrLn ("The sum is " ++ show (sum xs))
    putStrLn ("The product is " ++ show (product xs))
    factorials xs
    
askForNumbers = do
    hSetBuffering stdin LineBuffering
    putStrLn "Give me a number (or 0 to stop):"
    num <- getLine
    if read num == 0
        then return [] 
        else do nums <- askForNumbers
                return (read num : nums)

factorials [] = return ()
factorials (x:xs) = do
    putStrLn (show x ++ " factorial is " ++ show (factorial x))
    factorials xs

factorial 1 = 1
factorial n = n * factorial (n-1)