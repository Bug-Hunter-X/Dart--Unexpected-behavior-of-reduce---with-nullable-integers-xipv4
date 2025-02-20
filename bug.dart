```dart
List<int> numbers = [1, 2, 3, 4, 5];
int sum = numbers.reduce((a, b) => a + b);
print(sum); // Output: 15

// This works fine.

List<int?> nullableNumbers = [1, 2, null, 4, 5];
int? nullableSum = nullableNumbers.reduce((a, b) => a! + b!); // This will throw an error if null is encountered
print(nullableSum); // throws an error

//Correct way to handle nullable values:
int? nullableSum2 = nullableNumbers.fold<int?>(0, (previousValue, element) => previousValue! + element!);
print(nullableSum2); //Prints null

int? nullableSum3 = nullableNumbers.fold<int?>(0, (sum,element) => element == null ? sum : sum!+element);
print(nullableSum3); //Prints 15
```