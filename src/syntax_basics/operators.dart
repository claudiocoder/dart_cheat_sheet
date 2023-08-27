// Operators

// Operator precedence 
if((n % 1 == 0) && (n % n == 0)) {
  print('n is prime');
}

// Arithmetic operators
assert(2 + 3 == 5);
assert(2 - 3 == -1);
assert(2 * 3 == 6);
assert(5 / 2 == 2.5); // Result is a double
assert(5 ~/ 2 == 2); // Result is an int
assert(5 % 2 == 1); // Remainder

// Increment and decrement operators
int a;
int b;

a = 0;
b = ++a; // Increment a before b gets its value.
assert(a == b); // 1 == 1

a = 0;
b = a++; // Increment a AFTER b gets its value.
assert(a != b); // 1 != 0

a = 0;
b = --a; // Decrement a before b gets its value.
assert(a == b); // -1 == -1

a = 0;
b = a--; // Decrement a AFTER b gets its value.
assert(a != b); // -1 != 0

// Equality and relational operators
assert(2 == 2);
assert(2 != 3);
assert(3 > 2);
assert(2 < 3);
assert(3 >= 3);
assert(2 <= 3);

// Type test operators
(employee as Person).firstName = 'Bob';
// If you aren't sure whether an object supports a certain interface, you can check at runtime using the is keyword:
if (employee is Person) {
  employee.firstName = 'Bob';
}

// Assignment operators
a = value;
b ??= value; // Assign value to b if b is null; otherwise, b stays the same

// Logical operators
if(!done && (col == 0 || col == 3)) {
  // ...Do something...
}

//Conditional expressions
var visibility = isPublic ? 'public' : 'private';
// If the boolean expression tests for null, consider using ?? instead:
String playerName(String? name) => name ?? 'Guest';

// Cascade notation (..)
// Cascades allow you to make a sequence of operations on the same object.
var paint = Paint()
  ..color = Color(0xFF00FFFF)
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 5.0;


// Another example  
var button = querySelector('#confirm') // Get an object.
  ..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));