module Functions

doubleInt : Int -> Int
doubleInt x = x + x

double : Num ty => ty -> ty
double x = x + x

-- generic function
identity : ty -> ty
identity x = x

-- e.g. inc 3, inc (-3), inc $ -3
-- in the REPL it'd work with Double like this > `the Double $ inc 3.3`
inc : Num ty => ty -> ty
inc x = x + 1

myX : Double
myX = inc 3.3

-- e.g. decBy 2 1
decBy : Neg ty => ty -> ty -> ty
decBy x y = x - y

decByOne : Neg ty => ty -> ty
decByOne x = decBy x 1

-- e.g: applyToNum inc $ -3
applyToNum : (a -> a) -> a -> a
applyToNum f x = f x 

addThree : Num ty => ty -> ty
addThree x = x + 3 

-- Using Operator section
addFour : Num ty => ty -> ty
addFour x = (+) x 4

-- Doesn't compile
--(**) : Double -> Double -> Double
--(**) x y = pow x y 

raise : Double -> Double -> Double
raise x y = pow x y

simple : typ -> typ
simple x = x

||| Using with syntax we can emulate Haskell guards
above100: Int -> Bool
above100 x with (x > 100)
    above100 _ | True = True
    above100 _ | otherwise = False

