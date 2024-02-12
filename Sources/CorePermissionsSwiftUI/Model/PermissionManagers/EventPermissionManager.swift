//
//  EventPermissionManager.swift
//  PermissionsSwiftUI-Example
//
//  Created by Jevon Mao on 8/26/23.
//

import Foundation

open class EventPermissionManager: PermissionManager {
    public init(requestedAccessLevel: AccessLevel = .legacy) {
        self.requestedAccessLevel = requestedAccessLevel
        if requestedAccessLevel == .legacy {
            NSLog("[PermissionsSwiftUI]: WARNING! Using legacy calendar or reminder permission, which will NOT work in iOS 17 and always return denied due to Apple EventKit API changes. Learn more: https://developer.apple.com/documentation/eventkit/accessing_the_event_store")
        }
    }


    public var requestedAccessLevel: AccessLevel

    public enum AccessLevel {
        case writeOnly
        case full
        case legacy
    }

    public override var authorizationStatus: AuthorizationStatus {
        return .notDetermined
    }

    public func requestLegacyPermission( _ completion: @escaping (Bool, Error?) -> Void) {
        
    }

}
