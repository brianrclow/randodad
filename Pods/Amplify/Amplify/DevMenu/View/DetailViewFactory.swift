//
// Copyright 2018-2020 Amazon.com,
// Inc. or its affiliates. All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import SwiftUI

/// A factory to create detail views based on `DevMenuItemType`
@available(iOS 13.0, *)
class DetailViewFactory {

    static func getDetailView(type: DevMenuItemType) -> AnyView {
        switch type {
        case .deviceInformation:
            return AnyView(DeviceInfoDetailView())
        case .environmentInformation:
            return AnyView(EnvironmentInfoDetailView())
        case .logViewer:
            return AnyView(LogViewer())
        case .reportIssue:
            return AnyView(IssueReporter())
        }
    }

}