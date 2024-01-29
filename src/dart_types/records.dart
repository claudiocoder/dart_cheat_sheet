// Version note: Records require a language version of a least 3.0
// Records are an anonymous, inmutable, aggregate type

// Record syntax
var record = ('first',a:2,b:true,'last');

// You can use record type annotations to define return types ans parameter types
(int, int) swap((int,int) record) {
  var (a,b) = record;
  return (b,a);
}

(String, int) record;
// Initialize a record
record = ('Bob', 20);

// REcord type annotatios in a variablle declaration  
({ int a, bool b}) record;
// Initialize a record with a record expression
record = ({a: 1, b: true});


// Record fields
// Postional fields expose gettrers of the name $1, $2, $3, etc
var record = ('first',a:2,b:true,'last');
print(record.$1); // 'first'
print(record.a); // 2
print(record.b); // true
print(record.$2); // 'last'

// Records types
(num, Object) pair = (1, 'a');
var fisrt = pair.$1; // Static type num, runtime type int
var second = pair.$2; // Static type Object, runtime type String

// Record equality
// Two records are equal if they have the same shape, and corresponding fields have the same values
(int x, int y, int z) point1 = (1, 2, 3);
(int r, int g, int b) color = (1, 2, 3);

print(point1 == color); // true

({int x, int y, int z}) point = ({x: 1, y: 2, z: 3});
({int r, int g, int b}) color = ({r: 1, g: 2, b: 3});
print(point == color); // Print false. Lint: Equals an unrelated type

// Mulpitle returns
(String, int) userInfo(Map<String, dynamic> json) {
  return(json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{'name': 'Bob', 'age': 20};

// Destructures using a record pattern
var(name, age) = userInfo(json);

/*
Eqivalent to:
var info = userInfo(json);
var name = info.$1;
var age = info.$2;
*/