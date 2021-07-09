||| This function calculates a type
||| given a Boolean value as an input
StringOrInt : Bool -> Type
StringOrInt x = case x of
    True => Int
    False => String


getStringOrInt : (x : Bool) -> StringOrInt x
getStringOrInt x = case x of
    True => 94
    False => "Ninety four"


valToString : (x : Bool) -> StringOrInt x -> String
valToString x val = case x of
    True => cast val
    False => val
    --True => ?xTrueType
    --False => ?xFalseType
