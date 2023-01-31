//
//  AppRouter.swift
//  OpenZen
//
//  Created by gaohang on 2023/02/01.
//

import Foundation
import SwiftUI

@MainActor
extension View {
    func withAppRouter() -> some View {
        navigationDestination(for: RouterDestinations.self) { destination in
            switch destination {
            case .favoriteBy:
                // fix later
                EmptyView()
            case .list:
                EmptyView()
            }
        }
    }
}

public enum RouterDestinations: Hashable {
    case favoriteBy
    case list
}
