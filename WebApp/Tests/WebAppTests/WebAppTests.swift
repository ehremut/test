import XCTest
@testable import WebApp

class WebAppTests: XCTestCase {
    func testGreeting() {
        let app = WebApp()
        XCTAssertEqual(app.greeting(), "Hello, world")
    }
}
