#Chapter 2

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
```


