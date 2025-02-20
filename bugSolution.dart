```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];

// Using fold to handle null values
int? sum = nullableNumbers.fold<int?>(0, (sum, element) {
  return element == null ? sum : sum! + element;
});
print(sum); // Output: 12

// Alternative fold approach
int? sum2 = nullableNumbers.fold(0, (int sum, int? element) => sum + (element ?? 0));
print(sum2); // Output: 12
```