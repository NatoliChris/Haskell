#Chapter 2

We can't make a program that divides a bool with a number.

##Explicit Type Declaration
* To examine types on GHCi
```
:t 'a'
=> 'a' :: Char
```

* Explicit types are always denoted with the first letter in uppercase. E.g. ``'a'`` has type ``Char``
* Funcitons will also have types.

```
removeNonUppercase :: [Char] -> [Char]
```

This method has type [Char], meaning that it takes one string as a parameter and returns another as a result.

##Common Haskell Types
* **Int** = integer. Int is bounded, which means that it has minimum value.
* **Integer** = integers that are **NOT** bound
* **Float** = floating point
* **Double** = real floating point with double precision
* **Bool** = Boolean type, only two values ``true`` or ``false``
* **Char** = unicode character, denoted by single quotes.
* Tuples are types, but their definition depends on their length as well as the types of their components.

##Type Variables
* It doens't really matter if the list contains numbers, characters or even lists
* Type variables allow functions to operate on values of various types in a type-safe manner.
* A **LOT** like generics.
* Functions that use type varibales are called ``polymorphic functions``

A good example is the function fst
```
:t fst
=> fst:: (a,b) -> a
```

This means that the function fst takes a tuple and returns the first element of the tuple.
This means that the first item's type and the return value's type will be the same.


##Type Classes 101
* Type class is an interface that defines some behaviour
* The values of many types can be compared for equality using the == operator
```
:t (==)
(==) :: (Eq a) => a -> a -> Bool
```

* The symbol ``=>`` is called a **Class Constraint**
* The ``Eq`` type class provides an interface for testing equality

###Ord Type Class
* Types whos values can be put in some order.
* Covers all the standard comparison functions
  * >
  * < 
  * >= 
  * <=

```
ghci> :t (>)
(>) :: (Ord a) => a -> a -> Bool
```

Ordering is a type that can be GT (greater than), LT (less than), EQ (equal)

###Show Type Class
* Show type class can be represented as strings
* All types covered so far are instances of ``Show``

###Read Type Class
* Opposite type class of ``Show``.
* Read function takes a string and returns a value whose tpe is an instance
```
ghci> read "8.2"
8.2
```

But there is a problem when trying to ``read "4"``. It doesn't know what type we want returned, or what we are going to do. 

Note: String is just another name for [Char]. String and [Char] can be used interchangeably.

###Enum Type Class
* Enum instances are sequentially ordered types.
* Main advantage of ``Enum`` is that we can use the values in lists.


###Bounded Type Class
* Bounded type class have upper and lower bounds. Can be checked with minBound and MaxBound
```
ghci> minBound :: Int
-2147483648

ghci> maxBound :: Bool
true
```

###Num Type Class
* Num is a numeric type class.
* Instances can act like numbers.
* Num type class:
  * Int
  * Integer
  * Float
  * Double

