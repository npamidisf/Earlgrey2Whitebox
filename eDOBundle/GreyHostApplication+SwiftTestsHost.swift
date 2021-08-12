//
//  GreyHostApplication+SwiftTestsHost.swift
//  eDOBundle
//
//  Created by Prasad Pamidi on 8/12/21.
//

import UIKit
import EarlGreyTest

extension GREYHostApplicationDistantObject: SwiftTestsHost {
    public func interfaceOrientation() -> UIInterfaceOrientation {
        return UIApplication.shared.statusBarOrientation
    }
}
