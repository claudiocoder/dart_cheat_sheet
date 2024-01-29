// For Loops
// You can iterate with the standard for loop
void main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);
}

// Clousure inside of Dart's for loop capture the value of the index. This avoids a common pitfall found in JavaScript.
var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
callbacks.forEach((c) => c());

// Sometimes you mihght want to iterate over the elements of a list, or some other sequence. The for-in loop iterates over the elements of a collection in order.
for(final candidate in candidates) {
  candidate.interview();
}
// The process the values obtained from the iterable, you can also use a pattern in a for-in loop.
for(final Candidate(:name, :yearsExperience) in candidates) {
  print('$name has $yearsExperience years of experience.');
}

// Iterable classes also have a forEaach method as another option
var collection = [0, 1, 2];
collection.forEach(print);

//While
while(!isDone()) {
  doSomething();
}

//Do-while
do{
  printLine();
} while(!atEndOfPage());


//Break and continue
// Use break to stop a loop
while(true) {
  if(shutDownRequested()) break;
  processIncomingRequests();
}

// Use continue to skip to the next iteration of a loop
for (int i = 0; i < candidates.length; i++) {
  var candidate = candidates[i];
  if (candidate.yearsExperience < 5) {
    continue;
  }
  candidate.interview();
}

// If you are using an iterable such as a list or set, how to write the previous example using a for-in loop
candidates.where((c) => c.yearsExperience >= 5).forEach((c) => c.interview());


// Test your code here
/* void main() {
  
} */