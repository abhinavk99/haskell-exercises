-- https://www.hackerrank.com/challenges/fp-sum-of-odd-elements/problem

f arr = sum(filter odd arr)

-- This part handles the Input/Output and can be used as it is. Do not change or modify it.
main = do
   inputdata <- getContents
   putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata