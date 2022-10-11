//
//  FirebaseRemoteConfigProvider.swift
//  Moments
//
//  Created by Jake Lin on 11/11/20.
//

import Foundation
import FirebaseRemoteConfig

enum FirebaseRemoteConfigKey: String, RemoteConfigKey {
    //头像圆角
    case isRoundedAvatar
    // like按钮类型
    case likeButtonStyle
}

struct FirebaseRemoteConfigProvider: RemoteConfigProvider {
    
    static let shared: FirebaseRemoteConfigProvider = .init()
    private let remoteConfig = RemoteConfig.remoteConfig()
    
    private init() { }
    
    func setup() {
        // swiftlint:disable no_hardcoded_strings
        remoteConfig.setDefaults(fromPlist: "FirebaseRemoteConfigDefaults")
        // swiftlint:enable no_hardcoded_strings
    }
    
    func fetch() {
        remoteConfig.fetchAndActivate()
    }
    
    
}
// MARK: - Method -
extension FirebaseRemoteConfigProvider{
    
    func getString(by key: RemoteConfigKey) -> String? {
        guard let key = key as? FirebaseRemoteConfigKey else {
            return nil
        }
        
        return remoteConfig[key.rawValue].stringValue
    }
    
    func getInt(by key: RemoteConfigKey) -> Int? {
        guard let key = key as? FirebaseRemoteConfigKey else {
            return nil
        }
        
        return Int(truncating: remoteConfig[key.rawValue].numberValue)
    }
    
    func getBool(by key: RemoteConfigKey) -> Bool {
        guard let key = key as? FirebaseRemoteConfigKey else {
            return false
        }
        
        return remoteConfig[key.rawValue].boolValue
    }
}
