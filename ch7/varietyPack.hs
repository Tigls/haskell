k (x, y) = x
-- a) k:: (x ,y) -> x
k1 = k ( (4-1), 10)
-- k1 :: k (x,y) - no k:: [Integer]
k2 = k ("three", (1 + 2)) 
-- k2 :: k (x,y) - no k :: [Char]
k3 = k (3, True)
-- b) no 
-- c) k1, k3

f :: (a,b,c) -> (d,e,f) -> ((a,d), (c, f))
f (a,b,c) (d,e,f) = ((a,d), (c,f))
