//
//  Landmark.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park : String
    var state: String
    var description: String
    var isFavorite: Bool
    var category: Category
    
    private var imageName: String
    
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    
    enum Category: String, Codable, CaseIterable{
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    var locationCoordinates: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}
