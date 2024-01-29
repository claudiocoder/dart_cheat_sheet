// The dart type system

// You can fix most static anlysis errors by adding type annotations to generic classes
// The most common type annotations are: List<T> and Map<K, V>

void printInts(List<int> a) => print(a);
void main() {
  final list = <int>[];
  list.add(1);
  list.add(2);
  printInts(list);
}

// Use sound return type when overrriding methods
class Animal {
  void chase(Animal x) {
    print('chasing $x');
  }
}

class HoneyBadger implements Animal {
  @override
  void chase(covariant HoneyBadger x) {
    print('chasing $x');
  }

  @override
  HoneyBadger get parent => throw UnimplementedError();
}


// Use sound return type when overrriding methods
class Animal {
  void chase(Animal x) {
    print('chasing $x');
  }
}

class HoneyBadger extends Animal {
  @override
  void chase(covariant HoneyBadger x) {
    print('chasing $x');
  }

  @override
  HoneyBadger get parent => throw UnimplementedError();
}

// Dont use a dinamyc List a a typed list
class Cat extends Animal {}
class Dog extends Animal {}

void main(){
  List<Cat> cats = <dynamic>[Dog()]; // Error
  List<dynamic> bar = <dynamic>[Dog(), Cat()]; // OK
}


// Type inference
// If you explicity type the variable, you might wirte this
Map<String, int> map = {'a': 1, 'b': 2, 'c': 3};
//Alternatively, you can use var or final and let Dart infer the type
var arguments = {'a': 1, 'b': 2, 'c': 3};