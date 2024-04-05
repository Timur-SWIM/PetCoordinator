import UIKit
import SwiftUI

class ProfileTabCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        start()
    }
    
    func start() {
        let profileViewController = UIHostingController(rootView: ProfileView(
            actionRequested: (
                settings: { [weak self] in self?.goToSettings() },
                planner: { [weak self] in self?.goToPlanner() }
            )
        ))
        profileViewController.title = "Profile"
        rootViewController.setViewControllers([profileViewController], animated: false)
    }
    
    func goToSettings() {
        let settingsViewController = UIHostingController(rootView: SettingsView())
        rootViewController.pushViewController(settingsViewController, animated: true)
    }
    
    func goToPlanner() {
        let plannerViewController = UIHostingController(rootView: PlannerView())
        rootViewController.pushViewController(plannerViewController, animated: true)
    }
}

