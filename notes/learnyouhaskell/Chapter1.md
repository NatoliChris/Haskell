#Chapter 1

##Notes:
* Haskell knows precedence of operations
* *IMPORTANT::* make sure to surround the negatives in parentheses!
* Haskell has the normal booleans:
  * True && True = True
  * True && False = False
  * not False = True
  * not (True && True) = False
  * 1 == 2
  * 2 /= 5
* Special Keyword *not* is negate like ! in most languages
* Mixing values can lead to Many things
* Functions in Haskell don't have to be defined in any particular order
* In Haskell, the *else* part is **Mandatory** in an if statement
* An apostrophe after a function name ( ``something'`` ) means that it is a **strict** version of the function

##Calling Functions
* *infix* - sandwiching function call between numbers with backticks! **`**
* *prefix* - functions in haskell : name comes first then arguments of parameters

```haskell
-- Infix
92 `div` 10

--Prefix
min 9 10
```

* Put brackets around any arithmetic to be used in function, may give some errors

```haskell
succ 9 * 10 -- Will give 101 [succ 9 = 10] * 10
succ (9 * 10) -- Will correctly give 91
```
