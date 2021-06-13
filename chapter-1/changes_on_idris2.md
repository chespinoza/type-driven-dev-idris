# Changes on Idris2

## Pag 18
### types aren't returned when evaluating expressions.
```
Idris2> 2.1 * 20
42.0
```
vs
```
Idris> 2.1 * 20
42.0 : Double
```

## Pag 18 - 1.4.2

### Examples about expression's types.
```
Idris2> :t 2 + 2
fromInteger 2 + fromInteger 2 : Integer
```
 vs 

```
Idris> :t 2 + 2
2 + 2 : Integer
```

### Example about the type of Type.
```
 Idris2> :t Type
 Type : Type
```
 vs 

```
Idris> :t Type
Type : Type 1
```

## Pag 19 - 1.4.3
### Example running exec from the repl
```
Main> :exec main
Hello, World!
```
 vs 

```
*Hello> :exec
Hello, World!
```