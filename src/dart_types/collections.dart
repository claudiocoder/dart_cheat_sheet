// List

// In dart arrays are List object so most people just call them lists
var = [1,2,3];
var list = [1,2,3];
assert(list.length == 3);
assert(list[1] == 2);

// Top create a list that's a compile-time constant, add const before the list literal
var constantList = const [1,2,3];
// constantList[1] = 1; // This line will cause an error

// Sets
// A set in Dart is an unordered collection of unique items
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// to create a empty set use {} preceded by a type argument, or assign {} to a variable of type Set
var names = <String>{};
// Add items to a set using the add() or addAll() methods
var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);
// use length to get the number of items in the set
assert(elements.length == 5);

// Maps
// A map is an object that associates keys and values. Both keys and values can be any type of object. Each key occurs only once, but you can use the same value multiple times. Dart support for maps is provided by map literals and the Map type
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

// You can create the same objects using a Map constructor
var gifts = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

// Retrieve a value from a map
var gifts = {'first': 'partridge'};
assert(gifts['first'] == 'partridge');

// Operators

// Spread operator(...)
// Dart supports the spread operator(...) to insert multiple elements into a collection

var list = [1,2,3];
var list2 = [0, ...list];
assert(list2.length == 4);

// If the expression to the right of the spread operator might be null, you can avoid exceptions by using a null-aware spread operator(...?)
var list = [0, ...?list];
assert(list.length == 1);


// Control flow operators 
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet'
];

//Dart also supoorts if-case inside of collection literals
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (login case 'Manager') 'Inventory',
];