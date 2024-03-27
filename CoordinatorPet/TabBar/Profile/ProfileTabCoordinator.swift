//
//  ProfileTabCoordinator.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import Foundation
import UIKit
import SwiftUI

class ProfileTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    lazy var profileViewController = {
        let vc = UIHostingController(rootView: ProfileView())
        vc.title = "Profile"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([profileViewController], animated: false)
    }
}
