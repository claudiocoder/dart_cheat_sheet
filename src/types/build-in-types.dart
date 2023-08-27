// Evety variable in dart is an object

// Object: The superclass of all Dart classses except Null
// Enum: A way to represent a fixed number of constant values
// Future and Stream: Represents a sequence of values, possibly asynchronously
// Iterable: Represents a sequence of values
// Never Indicates that the function doesn't return
// dynamic: Indicates that you want to disable static checking
// void: Indicates that you want to disable static checking

// Numbers
// Dart numbers come in two flavors
// Integers: whole numbers
// Doubles: numbers with fractional parts

var x = 1;
var hex = 0xDEADBEEF;

var y = 1.1;
var exponents = 1.42e5;

// You can also declare a variable as a num and assign it an int or a double
num x = 1;
x += 2.5;

double z = 1; // Equivalent to double z = 1.0

// String -> int
var one = int.parse('1');
assert(one == 1);

// String -> double
var onePointOne = double.parse('1.1');
Assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');

// String

// A Dart string is a sequence of UTF-16 code units
var s1 = 'Single quotes work well for string literals';
var s2 = "Double quotes work just as well";
var s3 = 'It\'s easy to escape the string delimiter';
var s4 = "It's even easier to use the other delimiter";

// You can put the value of an expression inside a string by using ${expression}W
var s = 'string interpolation';
assert('Dart has $s, which is very handy.' == 'Dart has string interpolation, which is very handy.');
assert('That deserves all caps. ${s.toUpperCase()} is very handy!' == 'That deserves all caps. STRING INTERPOLATION is very handy!');

// You can concatenate string adjecently using adjacent string literals or the + operator
var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
assert(s1 == 'String concatenation works even over line breaks.');
var s2 = 'The + operator ' + 'works, as well.';
assert(s2 == 'The + operator works, as well.');

// To create a multiline string, use a triple quote with either single or double quote
var s1 = '''
You can create
multi-line strings like this one.
''';

var s2 = """This is also a
multi-line string.""";


// Booleans
// Dart's booleans are objects of type bool
// Dart has two boolean literals: true and false, both of which are compile-time constants

// Chjecj for an empty string
var fullName = '';
assert(fullName.isEmpty);

//Check for zero
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null
var unicorn = null;
assert(unicorn == null);

// Check for NaN
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);