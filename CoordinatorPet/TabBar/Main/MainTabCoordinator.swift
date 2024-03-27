//
//  MainTabCoordinator.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import Foundation
import UIKit

class MainTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var mainViewController = {
        let vc = MainViewController()
        vc.title = "Main"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([mainViewController], animated: false)
    }
}
