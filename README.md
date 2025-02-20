# Dart Reduce() with Nullable Integers

This repository demonstrates an uncommon error that can occur when using the `reduce()` method with lists containing nullable integers in Dart.  The `reduce()` method will throw an error if any of the elements are null. A safer alternative is to use the `fold()` method.

## Bug
The `reduce()` method expects a non-null value for every element in the list during the reduction process. If a `null` is encountered, it throws an error, as shown in `bug.dart`.

## Solution
The `fold()` method allows for a more controlled and robust approach, providing an initial value and handling nulls gracefully, as demonstrated in `bugSolution.dart`.