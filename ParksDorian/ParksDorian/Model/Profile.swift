//
//  Profile.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import Foundation

struct Profile{
    var username: String
    var preferesNotifications = true
    var seasons: Season = .winter
    
    enum Season: String, CaseIterable, Identifiable{
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍁"
        case winter = "❄️"
        
        var id: String{
            rawValue
        }
    }
    
    static let `default` = Profile(username: "MichelJardinier")
    
}
