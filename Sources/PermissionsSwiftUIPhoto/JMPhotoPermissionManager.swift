//
//  JMPhotoPermissionManager.swift
//
//
//  Created by Jevon Mao on 1/31/21.
//

import Foundation
import Photos
import CorePermissionsSwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public extension PermissionManager {
    ///Used to access the user's photo library
    static let photo = JMPhotoPermissionManager()
}

@available(iOS 13.0, tvOS 13.0, *)
public final class JMPhotoPermissionManager: PermissionManager {
    
    
    public override var permissionType: PermissionType {
        .photo
    }
    
    public override var authorizationStatus: AuthorizationStatus  {
        return .notDetermined
    }
    
    var photoLibrary: PHPhotoLibrary.Type = PHPhotoLibrary.self
    init(photoLibrary:PHPhotoLibrary.Type=PHPhotoLibrary.self){
        self.photoLibrary = photoLibrary
    }
    override public func requestPermission(completion: @escaping (Bool, Error?) -> Void) {
        
    }
}

