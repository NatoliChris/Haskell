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

##Notes:
* Lists in haskell are Homogeneous

```haskell
--Let is like making a variable
let list = [4,8,15,16,23,42]
```

##Concatenation
```haskell

[] = empty list

--List concatenation
[1,2,3,4] ++ [9,10,11, 12] = [1,2,3,4,9,10,11,12]

--String Concatenation
"hello" ++ " " ++ "world" = "hello world"

--Note: ['h','i'] is the same as "hi"
```

The previous way is not the best, more useful to use the *cons* method using the ``:``

```haskell
5:[1,2,3,4] = [5,1,2,3,4]
```

##Accessing List Elements
Like other programming languages, accessing lists is using elements by index starting at 0

```haskell
[0,1,2,3,4] !! 1 = 1 -- Access element at index 1

"Steve Buscemi" !! 6 = 'B' -- Access element at index 6
```

##Lists Inside Lists
```haskell
let b = [[1,2,3,4], [5,4,3,2]]
b ++ [[1,3,2,4] = [[1,2,3,4], [5,4,3,2], [1,3,2,4]]
```

##Comparing Lists
In Hasell, it iterates through the list making comparisons with each index and determines which list is smaller

```
[3,2,1] > [2,1,0] => True
[3,2,1] > [2,10,100] => True
```

##More list operations

```haskell
--Note: they will give errors if they work with empty list
head [5,4,3,2,1] = 5
last [5,4,3,2,1] = 1
tail [5,4,3,2,1] = [4,3,2,1]
init [5,4,3,2,1] = [5,4,3,2]
length [5,4,3,2,1] = 5
reverse [5,4,3,2,1] = [1,2,3,4,5]
take 3 [5,4,3,2,1] = [5,4,3]
drop 3 [8,4,2,1,5,6]  [1,5,6]
maximum [1,2,3,4,5] = 5
minimum [8,3,5,1,6] = 1
sum [5,2,1,6,3,2,5,7] = 31
product [6,2,1,2] = 24 -- note: product [2,1,0] = 0

--Elem takes an item to see if it is in the list:
4 `elem` [3,4,5] = true

--Getting a range of a list
[1..10] = [1,2,3,4,5,6,7,8,9,10]
['a'..'z'] = "abcdefghijklmnopqrstuvwxyz"
[20, 19..1] -- can't just have [20..1]

```

##I'm a List Comprehension
* Another way to filter, transform and combine lists
* Very similar to mathematical concepts
```haskell
--Like the mathematical definition {2 * x | x \in N, x <= 10}
[x*2 | x <- [1..10]] = [2,4,6,8,10,12,14,16,18,20]

--OR all numbers from 50 to 100 whose remainder when divided by 7 is 3?
[x | x <- [50..10], x `mod` 7 == 3] = [52, 59, 66, 73, 80, 87, 94]
``

Note: Weding out parts of a list using predicates is also called *filtering*

When you have two lsits, and we want to get the product of every possible combination:
```haskell
[x*y | x <- [2,5,10], y <- [8,10,11]] = [16,20,22,40,50,55,80,100,110]
```

Note: **Underscores** are used as a temporary variable to store items we don't really care about.

You can split list comprehensions across several lines to improve readability! 

##Tuples


