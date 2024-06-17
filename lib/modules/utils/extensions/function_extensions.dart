extension FunctionExtensions<T extends Object> on T {
  K map<K>(K Function(T it) mapper) => mapper(this);
}
