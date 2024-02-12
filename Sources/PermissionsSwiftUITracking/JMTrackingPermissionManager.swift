//
//  JMTrackingPermissionManager.swift
//  
//
//  Created by Jevon Mao on 2/2/21.
//

import Foundation
import AppTrackingTransparency
import AdSupport
import CorePermissionsSwiftUI

@available(iOS 14, tvOS 14, *)
public extension PermissionManager {
    ///In order for app to track user's data across apps and websites, the tracking permission is needed
    static let tracking = JMTrackingPermissionManager()
}

@available(iOS 14, tvOS 14, *)
public class JMTrackingPermissionManager: PermissionManager {
    public override var permissionType: PermissionType {
        get {
                .tracking
        }
    }
    
    override public var authorizationStatus: AuthorizationStatus {
        return .notDetermined
    }

    public static var advertisingIdentifier:UUID{
        UUID()
    }
    
    
    public override func requestPermission(completion: @escaping (Bool, Error?) -> Void) {

    }
}
