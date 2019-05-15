# In-Class 5 Group 4

* Kurtis J Eveleigh
* Jae Dong Hwang

## 1. Which of the mutants in pair1, pair2, and pair3 are equivalent? Provide, for each non-equivalent mutant, a test case that kills it.

Pair 1 is non-equivalent. x=0, y=0, and z=1.
Pair 2 is equivalent.
Pair 3 is non-equivalent. a=3, b=1, and c= 2.

## 2. Which of the four mutants in set1 are equivalent? Provide, for each non-equivalent mutant, a test case that kills it.

Mutant 4 is equivalent.

Mutant1: x=-1, y=-1
Mutant2: x=-2, y=-3
Mutant3: x=-2, y=-3

## 3. Briefly explain how scopes work in Z3 and when they are useful?

Scopes work by allowing you to push the current state of asserts, add some assert cases, then pop back to the original state.
This allows you to remove redundant code and reuse statements in multiple tests.

## 4. (Optional) Recall your solution for the in-class 4 exercise. Pick one of the non-equivalent mutants that you deemed equivalent and that requires reasoning about limited-precision data types. Give the mutant ID and a Z3 program that proves non-equivalence.
