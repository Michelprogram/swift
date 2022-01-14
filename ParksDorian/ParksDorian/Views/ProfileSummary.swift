//
//  ProfileSummary.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct ProfileSummary: View {
    @State private var profile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Profile for : \(profile.username)").bold()
            Text("Notification : \(profile.preferesNotifications ? "on" : "off")")
            Text("Season : \(profile.seasons.rawValue)")
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary()
    }
}
