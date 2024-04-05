//
//  ProfileView.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import SwiftUI

struct ProfileView: View {
    
    var actionRequested: (settings: () -> (), planner: () -> ())
    
    var body: some View {
        VStack {
            Button("Settings") {
                goToSettings(actionRequested: actionRequested.settings)
            }
            Button("Planner") {
                goPlanner {
                    actionRequested.planner()
                }
            }
        }
    }
}

func goToSettings(actionRequested: () -> ()) {
    actionRequested()
}

func goPlanner(actionRequested: () -> ()) {
    actionRequested()
}

#Preview {
    ProfileView(actionRequested: (settings: {}, planner: {}))
}

