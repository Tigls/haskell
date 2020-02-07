module Sample where

  data TisAnInteger = TisAn Integer
  instance Eq TisAnInteger where 
    (==) (TisAn m) (TisAn m') = m == m'

  data TwoIntegers = Two Integer Integer
  instance Eq TwoIntegers where
    (==) Two(x,y) Two(x', y') = x == x' && y == y'

  data StringOrInt = TisAnInt Int | TisAString String
  instance Eq StringOrInt where
    (==) TisAnInt (x) TisAnInt (y) = x == y
    (==) TisAString (x') TisAString(y') = x' == y'
    (==) _ _ = False

  data Pair a b = Tuple a b
  instance Eq a => Eq (Pair a) where
    (==) (Pair x y) (Pair x' y') = x == x' && y == y'

  data Tuple a b = Tuple a b
  instance (Eq a, Eq b) => Eq Tuple(a, b) where
    (==) (Tuple x y) (Tuple x' y') = x == x' && y == 'y

  data Which a = ThisOne a | ThatOne a
  instance Eq a => Eq (Which a) where
    (==) ThisOne(x) ThisOne(x') = x == x'
    (==) ThatOne(y) ThatOne(y') = y == y'
    (==) _ _ = False

  data EitherOr a b = Hello a | Goodbye b
  instance (Eq a, Eq b) => EitherOr a b where
    (==) Hello(x) Hello(x') = x == x'
    (==) Goodbye(y) Goodbye(y') = y == y'
    (==) _ _ = False 
