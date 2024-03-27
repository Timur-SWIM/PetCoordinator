//
//  AppCoordinator.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import UIKit
import SwiftUI

//MARK: - Координатор приложения
class AppCoordinator: Coordinator {
    
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow) {
        
        self.window = window
    }
    func start() {
        
// Тут должно быть переключение между потоками но я его еще не написал
        
//        let authCoordinator = AuthCoordinator()
//        authCoordinator.start()
//        self.childCoordinators = [authCoordinator]
//        
//        window.rootViewController = authCoordinator.rootViewController
        
        let tabBarCoordinator = TabBarCoordinator()
        tabBarCoordinator.start()
        self.childCoordinators = [tabBarCoordinator]
        
        window.rootViewController = tabBarCoordinator.rootViewController
    }
    
    
}
