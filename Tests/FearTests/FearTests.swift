import XCTest
@testable import Fear

final class FearTests: XCTestCase {
  
  func incr(_ i: Int) -> Int {
    return i + 1
  }
  
  func square(_ i: Int) -> Int {
    return i * i
  }
  
  func inoutIncr(_ i: inout Int) {
    i = i + 1
  }
  
  func inoutSquare(_ i: inout Int) {
    i = i * i
  }
  
  func testForwardApplication() {
    let a = 2
    
    let result = a |> incr
    
    XCTAssertEqual(result, 3)
  }
  
  func testInoutForwardComposition() {
    var a = 2
    
    a |> inoutSquare(_:)
    a |> inoutIncr(_:)
    
    XCTAssertEqual(a, 5)
  }
}
