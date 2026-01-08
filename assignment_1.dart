void main() {
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};

  for (var element in setA.union(setB)) {
    print(element);
  }
}