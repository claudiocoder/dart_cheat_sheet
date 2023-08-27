/**
* Variables
*/

// Create a variable
var name = 'Bob';
// Create a variable if an objedt isn't restricted to a single type
Object name = 'Bob';
// Explicity declare the type that would be inferred
String name = 'Bob';


// Null Safety
String? name; // Can be null
String name; // Cannot be null

// Default values
int? lineCount;
assert(lineCount == null);

int lineCount = 0; // Default value
assert(lineCount == 0);

// Late variables 
// Used when a non-null variable is initialized after it's declaration
late String description;
void main() {
  description = 'Feijoada';
  print(description);
}
late String temperature = _readThermometer(); // Can be used with functions

// Final and const

// A final variable can be set only once; a const variable is a compile-time constant.
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
// You cannot change the value of a final variable
name = 'Alice'; // Error: a final variable can only be set once.

//Use const for variables that you want to be compile-time constants. If the const variable is at the class level, mark it static const.
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere

var foo = const [];
final bar = const [];
const baz = []; // Equivalent to `const []`

foo = [1, 2, 3]; // Was const []
bar = [42]; // Error: Constant variables can't be assigned a value.
