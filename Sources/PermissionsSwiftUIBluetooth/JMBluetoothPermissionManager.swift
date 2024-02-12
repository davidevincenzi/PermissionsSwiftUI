//
//  JMBluetoothPermissionManager.swift
//
//
//  Created by Jevon Mao on 1/31/21.
//

import CoreBluetooth
import UIKit
import CorePermissionsSwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public extension PermissionManager {
    ///Permission that allows app to access device's bluetooth technologies
    static let bluetooth = JMBluetoothPermissionManager()
}

@available(iOS 13.0, tvOS 13.0, *)
final public class JMBluetoothPermissionManager: PermissionManager {
    private var completion: ((Bool, Error?) -> Void)?
    
    public override var permissionType: PermissionType {
        .bluetooth
    }
    
    public override var authorizationStatus: AuthorizationStatus {
        return .notDetermined
    }
    
    public override func requestPermission(completion: @escaping (Bool, Error?) -> Void) {
        
    }
}
