//
//  AuthCoordinator.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import Foundation
import SwiftUI

//MARK: - координатор регистрации
class AuthCoordinator: Coordinator {
    
    var rootViewController = UIViewController()
    
    func start() {
        let view = AuthView {
            
        }
        rootViewController = UIHostingController(rootView: view)
    }
}
