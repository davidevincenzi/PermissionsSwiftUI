//
//  File.swift
//
//
//  Created by Jevon Mao on 1/31/21.
//

import Foundation
import UIKit
import UserNotifications
import CorePermissionsSwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public extension PermissionManager {
    ///The `notification` permission allows the iOS system to receive notification from app
    static let notification = JMNotificationPermissionManager()
}

@available(iOS 13.0, tvOS 13.0, *)
public final class JMNotificationPermissionManager: PermissionManager {
    
    
    public override var permissionType: PermissionType {
        .notification
    }
    
    public override var authorizationStatus: AuthorizationStatus {
        return .notDetermined
    }
    var notificationManager = UNUserNotificationCenter.current()

    override public func requestPermission(completion: @escaping (Bool, Error?) -> Void) {
        
    }
}
