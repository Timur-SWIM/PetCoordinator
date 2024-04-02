//
//  ProfileView.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import SwiftUI

struct ProfileView: View {
    var settingsRequested: () -> ()
    
    var body: some View {
        Button("Settings") {
            settingsRequested()
        }
    }
}

#Preview {
    ProfileView(settingsRequested: { })
}
