import XCTest
@testable import test

class testTests: XCTestCase {
    func testGreeting() {
        let app = test()
        XCTAssertEqual(app.greeting(), "Hello, world")
    }
}
