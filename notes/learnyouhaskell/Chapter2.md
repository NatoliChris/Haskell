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



