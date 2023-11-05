//
//  PermissionSection.swift
//
//
//  Created by Jevon Mao on 1/30/21.
//

import SwiftUI

@available(iOS 13.0, tvOS 13.0, *)
struct PermissionSection: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var showing:Bool
    @EnvironmentObject var store: PermissionStore
    
    var body: some View {
        VStack {
            ForEach(Array(zip(store.permissions.indices, store.permissions)), id: \.0) {index, permission in
                PermissionSectionCell(permissionManager: permission, allowButtonStatus: permission.authorizationStatus.allowButtonStatus, showing: $showing)
                if store.permissions.count > 1 && index != store.permissions.count - 1{
                    Divider()
                }
            }
        }
    }
}

extension AuthorizationStatus {
	var allowButtonStatus: AllowButtonStatus {
		    switch self {
        case .authorized, .temporary:
			return .allowed
		case .denied:
			return .denied
		default:
			return .idle
		}
    }
}
