// FUNCTIONS

// Here's an example of implementing a function
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

// Shorthand syntax
bool isNoble2(int atomicNumber) => _nobleGases[atomicNumber] != null;

// Named parameters
void enableFlags({bool bold, bool hidden}) {
  print(bold);
  print(hidden);
}
// When calling a function, you can specify named arguments using paramName: value. For example:
enableFlags(bold: true, hidden: false);

// Optional positional parameters Default values
void enableFlags2({bool bold = false, bool hidden = false}) {
  print(bold);
  print(hidden);

// Mandatory parameters
const Scrollbar({super.key, required Widget child});

// Optional positional parameters
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// Main Function
// Every app must have a top-level main() function, which serves as the entrypoint to the app.

void main() {
  print('Hello, World!');
}

// Anonymous functions
// Most functions are named, such main or printElement. You can also create functions without names, known as anonymous functions. You can assign an anonymous function to a variable, as shown in the following example.

const list = ['apple', 'banana', 'orange'];
list.map((item) {
  return item.toUpperCase();
}).forEach((item) {
  print('$item: ${item.length}');
});

// Lexical scope
// Dart is a lexically scoped language, which means that the scope of variables is determined statically, simply by the layout of the code. You can “read” the code and figure out what’s what.
bool topLevel = true;

void main(){
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}

// Return values
// All functions return a value. If no return value is specified, the statement return null; is implicitly appended to the function body.
foo() {}
assert(foo() == null);

(String, int) foo() {
  return ('a string', 10);
}

// Generators
// When you need to produce a sequence of valuesm consider using a generator function.
// Syncronous generator

// Asyhncronous generator
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

// If your generator is recursive, you can improve its performance by using yield*:
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}