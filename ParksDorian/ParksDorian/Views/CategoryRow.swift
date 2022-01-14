//
//  CategoryRow.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    
    var body: some View {
        VStack{
            ScrollView(.horizontal){
                HStack{
                    ForEach(items, id: \.id){land in
                        VStack{
                            land.image
                            Text(land.name)
                        }
                    }
                }
                .background(Color.orange)
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(3)))
    }
}
