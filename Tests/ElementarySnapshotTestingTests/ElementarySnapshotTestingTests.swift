import ElementarySnapshotTesting
import SnapshotTesting
import XCTest

final class ElementarySnapshotTestingTests: XCTestCase {
  func testComplexHtml() {
    let sut = ComplexHTML()
    assertSnapshot(of: sut, as: .html)
  }
}
