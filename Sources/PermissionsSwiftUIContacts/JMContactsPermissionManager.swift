//
//  JMContactsPermissionManager.swift
//  
//
//  Created by Jevon Mao on 2/2/21.
//

import Foundation
#if !os(tvOS)
import Contacts
import AddressBook
import CorePermissionsSwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public extension PermissionManager {
    ///A permission that allows developers to read & write to device contacts
    static let contacts = JMContactsPermissionManager()
}

@available(iOS 13.0, tvOS 13.0, *)
public final class JMContactsPermissionManager: PermissionManager {
    
    typealias authorizationStatus = CNAuthorizationStatus
    typealias permissionManagerInstance = JMContactsPermissionManager
    public override var permissionType: PermissionType {
        .contacts
    }
    
    public override var authorizationStatus: AuthorizationStatus {
        return .notDetermined
    }

    override public func requestPermission(completion: @escaping (Bool, Error?) -> Void) {
            
    }
}
#endif
