public func |><A, B>(_ a: A, _ f: @escaping (A) -> B) -> B {
  f(a)
}

public func |><A>(_ a: inout A, _ f: @escaping (inout A) -> Void) -> Void {
  f(&a)
}
