//
//  Picture.swift
//  ViewingPicturesTestTask
//
//  Created by Кирилл Тарасов on 25.09.2021.
//

import Foundation

struct Picture: Codable {
    let width: Int
    let height: Int
    let description: String?
    
    let user: User
    
    let urls: [URLKing.RawValue : String]
    
    enum URLKing: String {
        case raw
        case full
        case regular
        case small
        case thumb
    }
}

struct User: Codable {
    let name: String
}
