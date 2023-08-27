// Generics are often required for type safety, 
// Properly specifying generic types results in better generated code
// You can use generics to reduce code duplication

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// Using collection literals  
var names = <String>['Seth', 'Kathy', 'Lars'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};

// To specify one or more types when using a constructor,
var nameSet = Set<String>.from(names);
// The following code creates a map that has integer keys and values of type View:
var views = Map<int, View>();

// Generic collections and the types the contain
var names = <String>[]
names.addAll(['Seth', 'Kathy', 'Lars']);
print(names is List<String>); // true


//Restricticting the parameterized type
// You might want to limit the types that can be provided as arguments, so that th argument must be a subtype of a particular type

class Foo<T extends Object> {
  // Any type providev to Foo for T must be non-nullable
}

class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {...}

var someBaseClassFoo = Foo<SomeBaseClass>();
var extenderFoo = Foo<Extender>();

// Using generic methods
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}