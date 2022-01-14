//
//  ModelData.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import Foundation
import Combine


class ModelData: ObservableObject{
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    
    var features: [Landmark]{
        landmarks.filter {$0.isFeatured}
    }
    
    var categories: [String: [Landmark]]{
        Dictionary(grouping: landmarks, by:{$0.category.rawValue})
    }
}

//var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename:String) -> T{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError()
    }
    
    do{
        data =  try Data(contentsOf: file)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)

    }
    catch{
        fatalError()
    }
    
}
