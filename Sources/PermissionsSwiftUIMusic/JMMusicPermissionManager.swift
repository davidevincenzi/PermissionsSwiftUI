//
//  JMMusicPermissionManager.swift
//  
//
//  Created by Jevon Mao on 3/22/21.
//

import Foundation
import MediaPlayer
import CorePermissionsSwiftUI

#if !os(tvOS)
@available(iOS 13.0, tvOS 13.0, *)
public extension PermissionManager {
    ///Permission that allows app to control audio playback of the device
    static let music = JMMusicPermissionManager()
}

@available(iOS 13.0, tvOS 13.0, *)
public final class JMMusicPermissionManager: PermissionManager {
    
    public override var authorizationStatus: AuthorizationStatus {
        return .notDetermined
    }
    public override var permissionType: PermissionType {
        .music
    }
    override public func requestPermission(completion: @escaping (Bool, Error?) -> Void) {
        
    }
}
#endif
