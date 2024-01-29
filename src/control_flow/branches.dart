// If
if( isRaining() ) {
  you.bringRainCoat();
}else if( isSnowing() ) {
  you.wearJacket();
}else {
  car.putTopDown();
}

//if-case
//Dart if statement can be used as an expression. This is called an if-else statement in other languages.
if(pair case [int x, int y]) return Point(x, y);

if(pair case [int x, int y]) {
  return Point(x, y);
}else {
  throw FormatException('Unexpected end of input: $pair');
}

//Switch statements
var command = 'OPEN';
switch(command){
  case 'CLOSED':
    executeClosed();
    break;
  case 'PENDING':
    executePending();
    break;
  case 'APPROVED':
    executeApproved();
    break;
  case 'DENIED':
    executeDenied();
    break;
  case 'OPEN':
    executeOpen();
    break;
  default:
    executeUnknown();
}

// Switch expressions
//  Version note: Switch expressions require a language version of at least 3.0.
token = switch(charCode){
  slash || star || plus || minus => operator(charCode),
  comma || semicolon => punctuation(charCode),
  >= digit0 && <= digit9 => number(),
  _ => throw FormatException('Invalid')
}