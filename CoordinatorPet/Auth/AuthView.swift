//
//  AuthView.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import SwiftUI

struct AuthView: View {
    
    var login: () -> ()
    
    var body: some View {
        VStack {
            Text("AuthView")
                .font(.largeTitle)
            .foregroundStyle(Color(.cyan))
            Button("Login") {
                login()
            }
                .frame(width: 60, height: 40)
                .background(Color(.gray))
                
        }
        
    }
}

#Preview {
    AuthView(login: {})
}
