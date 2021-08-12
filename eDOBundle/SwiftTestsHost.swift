//
//  SwiftTestsHost.swift
//  eDOBundle
//
//  Created by Prasad Pamidi on 8/12/21.
//

import UIKit

@objc
public protocol SwiftTestsHost {

  /// Obtain the host application's interface orientation.
  func interfaceOrientation() -> UIInterfaceOrientation
}
