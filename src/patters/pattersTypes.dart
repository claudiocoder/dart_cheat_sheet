// Logical-or
var isPrimary = switch (color){
  Color.red || Color.blue || Color.yellow => true,
  _ => false, 
}

// Logical AND
switch((1,2)){
  case(var a, var b) && (var b, var c):
}

// Relational
// == Expression
// < Expression
String asciiCharType(int char) {
  const space = 32;
  const zero = 48;
  const nine = 57;

  return switch (char) {
    < space => 'control',
    == space => 'space',
    > space && < zero => 'punctuation',
    >= zero && <= nine => 'digit',
    _ => ''
  };
}

// Cast
// Insert a type cast in the middel of destructuring
(num, Object) record = (1, 'a');
var(i as int, s as String) = record;

// Null check
// Use a null check to destructure a nullable object
String? maybeString = 'str';
switch (maybeString){
  case var s?:
    // s has type String
}

//Null assert
List<String?> row = ['user', null];
switch (row){
  case ['user', var name!]:
  // name is a non-nullable String
}

// Parenthesized
x || y && z => 'matches true'
(x || y) && z => 'matches false'

// List
// A list pattern matches values that implement List, and the recursively matches its subpatterns against th list elements  
// to destructure the position
const a = 'a';
const b = 'b';
switch(obj){
  case[a, b]:
    print('$a and $b');
}

// Rest element
var [a,b, ... ,c,d] = [1,2,3,4,5,6,7];
print('$a, $b, $c, $d'); // 1,2,6,7

var [a, b, ...rest, c, d] = [1, 2, 3, 4, 5, 6, 7];
// Prints "1 2 [3, 4, 5] 6 7".
print('$a $b $rest $c $d');


//Map
// Map patterns match values that implement Map, and then recursively match its subpatterns against the map’s keys to destructure them.
// Map patterns don’t require the pattern to match the entire map. A map pattern ignores any keys that the map contains that aren’t matched by the pattern.


// Record
// Record patterns match a record object and destructure its fields. If the value isn’t a record with the same shape as the pattern, the match fails. Otherwise, the field subpatterns are matched against the corresponding fields in the record.
var (myString: foo, myNumber: bar) = (myString: 'string', myNumber: 1);

// Record pattern with a variable subpatterns
var (untyped: untyped, typed: int typed) = record
var(:untyped, :int typed) = record;

switch (record) {
  case (untyped: var untyped, typed: int typed): // ...
  case (:var untyped, :int typed): // ...
}

switch (record) {
  case (checked: var checked?, asserted: var asserted!): // ...
  case (:var checked?, :var asserted!): // ...
}

// Record pattern wih cast subpattern:
var (untyped: untyped as int, typed: typed as String) = record;
var (:untyped as int, :typed as String) = record;


// Object
// Object patterns check the matches value against a given names type to destructure data using
// getters on the object's properties
switch(shape){
  case Rect(width: var width, height: var height):
    print('Rect: $width x $height');
}

// Binds new variables x and y to the values of Point's x and y properties.
var Point(:x, :y) = Point(1, 2);


// WildCard _
var list = [1,2,3];
var [_, two, _] = list;

// A wildcard name with a type annotation is useful when you want to test the value's type but not bind the value to a name.
switch(record){
  case(int _, String _):
    print('First field is a Int and second is a String');
}