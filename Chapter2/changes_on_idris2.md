# Changes on Idris2

## Pag 26
### REPL results  `:let` doesn't work as described, it's needed to declare their type
```
Main> :let x : Integer
Main> :let x = 100
Main> x
100
```
vs
```
Idris> :let x = 100
Idris> x
100 : Integer
```