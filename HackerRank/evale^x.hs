-- https://www.hackerrank.com/challenges/eval-ex/problem

import Control.Applicative
import Control.Monad
import System.IO

f :: Double -> Double
f x = sum [(x ** y)/(factorial y) | y <- [0..9]]

factorial :: Double -> Double
factorial 0 = 1
factorial n = factorial (n - 1) * n

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    forM_ [1..n] $ \a0  -> do
        x_temp <- getLine
        let x = read x_temp :: Double
        putStrLn (show (f x))

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do          
        x <- getLine         
        xs <- getMultipleLines (n-1)    
        let ret = (x:xs