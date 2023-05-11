public func >>><A, B, C>(
  _ f1: @escaping (A) -> B,
  _ f2: @escaping (B) -> C
) -> (A) -> C {
  return { a in
    f2(f1(a))
  }
}
