//
//  Earlgrey2WhiteBoxUITests.swift
//  Earlgrey2WhiteBoxUITests
//
//  Created by Prasad Pamidi on 8/12/21.
//

import XCTest
import EarlGreyTest

private extension XCTestCase {
  /// A variable to point to the GREYHostApplicationDistantObject since casts in Swift fail on
  /// proxy types. Hence we have to perform an unsafeBitCast.
  var host: SwiftTestsHost {
    return unsafeBitCast(
      GREYHostApplicationDistantObject.sharedInstance,
      to: SwiftTestsHost.self)
  }
}

class Earlgrey2WhiteBoxUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        let app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInterfaceOrientation() {
      XCTAssertEqual(host.interfaceOrientation(), UIInterfaceOrientation.portrait)
    }
}
