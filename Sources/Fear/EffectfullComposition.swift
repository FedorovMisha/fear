
public func >=><A, B, C>(
  _ f: @escaping (A) -> B?,
  _ g: @escaping (B) -> C?
) -> ((A) -> C?) {
  return { a in
    switch f(a) {
    case .some(let b):
      return g(b)
    case .none:
      return nil
    }
  }
}

public func >=><A, B, C, L>(
  _ f: @escaping (A) -> (B, [L]),
  _ g: @escaping (B) -> (C, [L])
) -> (A) -> (C, [L]) {
  return { a in
    let (b, logs) = f(a)
    let (c, moreLogs) = g(b)
    return (c, logs + moreLogs)
  }
}

public func >=><A, B, C>(
  _ f: @escaping (A) -> Result<B, any Error>,
  _ g: @escaping (B) -> Result<C, any Error>
) -> (A) -> Result<C, Error> {
  return { a in
    switch f(a) {
    case let .success(b):
      return g(b)
    case let .failure(error):
      return .failure(error)
    }
  }
}
