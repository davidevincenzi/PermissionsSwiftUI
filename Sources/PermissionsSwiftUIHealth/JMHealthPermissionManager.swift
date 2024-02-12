//
//  JMHealthPermissionManager.swift
//  
//
//  Created by Jevon Mao on 2/10/21.
//

import Foundation
#if !os(tvOS) && PERMISSIONSWIFTUI_HEALTH
import CorePermissionsSwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public extension PermissionManager {
    /**
     Permission that allows app to access healthkit information
     
     - Note: Extensive Info.plist  values and configurations are required for HealthKit authorization. Please see Apple Developer [website](https://developer.apple.com/documentation/healthkit/authorizing_access_to_health_data) for details. \n
     
     For example, passing in a `Set` of `HKSampleType`:
     ```
     [.health(categories: .init(readAndWrite: Set([HKSampleType.quantityType(forIdentifier: .activeEnergyBurned)!])))]
     ```
     
     - Attention: From Apple Developer Documentation: "to help prevent possible leaks of sensitive health information, your app cannot determine whether or not a user has granted permission to read data. If you are not given permission, it simply appears as if there is no data of the requested type in the HealthKit store."
     */
    
}

@available(iOS 13.0, tvOS 13.0, *)
public class JMHealthPermissionManager: PermissionManager {
    
    typealias CountComparison = (Int, Int)
    
    override public var permissionType: PermissionType {
        get {
            .health
        }
    }

    
    /**
     - Note: From Apple Developer Documentation: "to help prevent possible leaks of sensitive health information, your app cannot determine whether or not a user has granted permission to read data. If you are not given permission, it simply appears as if there is no data of the requested type in the HealthKit store."
     */
    public override var authorizationStatus: AuthorizationStatus {
        get {
            return .notDetermined
        }

    }

    override public func requestPermission(completion: @escaping (Bool, Error?) -> Void) {
        
        
    }
    func createUnavailableError() -> NSError {
        let userInfo: [String: Any] = [
            NSLocalizedDescriptionKey:
              NSLocalizedString("Health permission request couldn't be completed.",
                                comment: "localizedErrorDescription"),
            NSLocalizedFailureReasonErrorKey:
                NSLocalizedString("Health data is not available on the current device, the permission cannot be requested.", 
                                  comment: "localizedErrorFailureReason"),
            NSLocalizedRecoverySuggestionErrorKey:
              NSLocalizedString("Verify that HealthKit is available on the current device.",
                                comment: "localizedErrorRecoverSuggestion")
          ]
        return NSError(domain: "com.jevonmao.permissionsswiftui", code: 1, userInfo: userInfo)
    }
}
#endif
