import Functions

||| Applies a function twice
twice : (a -> a) -> a -> a
twice f x = f (f x) 

Shape : Type
rotate : Shape -> Shape

quadruple : Num a => a -> a
quadruple = twice double

turn_around : Shape -> Shape
turn_around = twice rotate

-- doesn't type check No implementation of Shape
--my_shape : Shape
--my_shape = 3
