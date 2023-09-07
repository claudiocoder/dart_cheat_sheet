// Pattterns are a sytatic categorie in the Dart language, like statemens, expressions, etc.

// What Pattetns do?
// A pattern may match a value, destructure a value, or both.

// Matching 
// A pattern always tests agains a value to determine ig the valuae has the form you expect. In other words, you are checking
// if the value matches the pattern.

// A constant pattern matches if the value is equal to the pattern's constant:
switch (number){
  case 1:
    print('One');
    break;
}

const a = 'a';
const b = 'b';
switch (number){
  case [a, b]:
    print('a or b');
    break;
}


// DESTRUCTURING
// A pattern may also destructure a value into its parts. For example, you can use a list pattern to destructure a list into its
var numList = [1, 2, 3];
var [a,b,c] = numList;
print(a); // 1

//Places patter can appear

// Variable declarations
var (a,[b,c]) = ('str',[1,2]); // A pattern variable devlaration must start either var or final by a pattern

// Assignment
// Use a varable pattern to swap the values of two variuablees withour declaring a third temporary one
var (a,b) = ('left', 'right');
(b,a) = (a,b); // swap a and b
print('$a $b'); // right left

// Swicth statements
switch (obj){
  case 1:
    print('one');
    break;
  case >= firstValue && <= lastValue:
    print('between $firstValue and $lastValue');
    break;
  case (var a, var b):
    print('a: $a, b: $b');
    break;
}

// Logical patters useful to having multiple cases share a body
var isPrimary = switch (color){
  Color.red || Color.blue || Color.yellow => true,
  _ => false, 
}

// For loops
// This example uses object destructuring to iterate over the key-value pairs of a map
Map<String,int> hist = {
  'a': 1,
  'b': 2,
}
for(var MapEntry(key:key, value:count) in hist.entries){
  print('$key: $value');
}

// Destructuring multiple returns
// Records allow aggregating and returning values form a single function call
var info = userInfo(json)
var name = info.$1;
var age = info.$2;

var (name, age) = userInfo(json);

// Desctructuring function parameters
// You can use a pattern to destructure a function's parameters
final Foo myFoo = Foo(one:'one', two:2);
var Foo(:one, :two) = myFoo;
print('$one $two'); // one 2

// Validating incoming JSON
var json = {
  'user': ['Lily',23]
  var {'user': [name, age]} = json;
}

if(json case {'user': [String name, int age]}){
  print('$name $age');
}