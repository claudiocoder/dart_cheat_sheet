// Use metadata to give the compiler extra information about your code.

class Television {
  @Deprecatred('Use turnOn instead')
  void activate() {
    turnOn();
  }

  void turnOn() {
    print('on!');
  }
}

// You can define your own metadata annotations by defining a const class that extends the built-in class MetadataAnnotation. For example:
class Todo {
  final String who;
  final String what;

  const Todo(this.what, this.who);

  @Todo('Dash', 'Implement this function')
  void doSomething() {
    print('do something');
  }
}