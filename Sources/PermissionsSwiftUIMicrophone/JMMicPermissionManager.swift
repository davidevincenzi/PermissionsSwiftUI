//
//  JMMicPermissionManager.swift
//
//
//  Created by Jevon Mao on 1/31/21.
//
#if os(iOS)
import AVFoundation
import Foundation
import CorePermissionsSwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public extension PermissionManager {
    ///Permission allows developers to interact with the device microphone
    static let microphone = JMMicrophonePermissionManager()
}

@available(iOS 13.0, tvOS 13.0, *)
public final class JMMicrophonePermissionManager: PermissionManager {
    public override var permissionType: PermissionType {
        .microphone
    }
    public override var authorizationStatus: AuthorizationStatus {
        return .notDetermined
    }
    
    override public func requestPermission(completion: @escaping (Bool, Error?) -> Void) {
        
    }
}
#endif
