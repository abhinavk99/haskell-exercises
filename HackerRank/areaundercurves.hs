-- https://www.hackerrank.com/challenges/area-under-curves-and-volume-of-revolving-a-curv/problem

import Text.Printf (printf)

step = 0.001 :: Double

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [area, volume]
    where
        area = sum [step * f x a b | x <- limits l r]
        volume = sum [step * pi * (f x a b ** 2) | x <- limits l r]

f :: Double -> [Int] -> [Int] -> Double
f x a b = sum [fromIntegral coeff * (x ^^ exp) | (coeff, exp) <- zip a b]

limits :: Int -> Int -> [Double]
limits l r = [fromIntegral l, fromIntegral l + step .. fromIntegral r]

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines