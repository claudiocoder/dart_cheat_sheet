// A type alias with keyword typedef provides a name for a function type,
typedef IntList = List<int>;
IntList ilist = [1, 2, 3];

// A type alias can have type parameters:
typedef ListMapper<X> = Map<X, List<X>>;
Map<String, List<String>> map = {}
ListMapper<String> listMapper = map; // Same as: Map<String, List<String>> listMapper = map;

// Recommend use inline function tpes instead of typedefs for functions
typedef Compare<T> = int Function(T a, T b);
int sort(int a, int b) => a - b;

void main() {
  assert(sort is Compare<int>); // True!
  assert(sort is! Compare<double>); // True!
}
