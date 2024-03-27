//
//  TabBarCoordinator.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import Foundation
import UIKit

//MARK: - координатор Таб Бара
class TabBarCoordinator: Coordinator {
    
    var rootViewController = UITabBarController()
    
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.backgroundColor = .lightGray
    }
    
    func start() {
        
        let mainCoordinator = MainTabCoordinator()
        mainCoordinator.start()
        self.childCoordinators.append(mainCoordinator)
        let mainViewController = mainCoordinator.rootViewController
        mainViewController.tabBarItem = UITabBarItem(title: "Main",
                                                     image: UIImage(systemName: "paperplane"),
                                                     selectedImage: UIImage(systemName: "paperplane.fill"))
        
        let profileCoordinator = ProfileTabCoordinator()
        profileCoordinator.start()
        self.childCoordinators.append(profileCoordinator)
        let profileViewController = profileCoordinator.rootViewController
        profileViewController.tabBarItem = UITabBarItem(title: "Profile",
                                                        image: UIImage(systemName: "bell"),
                                                        selectedImage: UIImage(systemName: "bell.fill"))

        
        self.rootViewController.viewControllers = [mainViewController, profileViewController]
    }
}
