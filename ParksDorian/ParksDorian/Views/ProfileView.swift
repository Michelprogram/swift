//
//  ProfileView.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.editMode) var editMode
    
    @State private var profile = Profile.default
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive{
                ProfileSummary()
            }
            else{
                Text("Edit mode")
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
