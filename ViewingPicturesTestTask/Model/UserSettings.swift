//
//  UserSettings.swift
//  ViewingPicturesTestTask
//
//  Created by Кирилл Тарасов on 25.09.2021.
//

import Foundation

final class UserSetting {
    
    private enum SettingKeys: String {
        case dateDownload
    }
    
    static var dateDownload: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingKeys.dateDownload.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingKeys.dateDownload.rawValue
            if let date = newValue {
                print("value: \(date) was added to key \(key)")
                defaults.set(date, forKey: key)
            }
        }
    }
}
