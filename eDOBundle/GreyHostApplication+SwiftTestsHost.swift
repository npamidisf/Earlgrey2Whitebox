//
//  GreyHostApplication+SwiftTestsHost.swift
//  eDOBundle
//
//  Created by Prasad Pamidi on 8/12/21.
//

import UIKit

extension GREYHostApplicationDistantObject: SwiftTestsHost {

  func interfaceOrientation() -> UIInterfaceOrientation {
    return UIApplication.shared.statusBarOrientation
  }
}
