module Ex3 where

addSymbol s = s ++ "!"

getForth s = take 1 (drop 4 s)
dropNine s = drop 9 s

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

rvrs = (drop 9 s) ++ (take 4 $ drop 5 s) ++ (take 5 s) where s = "Curry is awesome"
