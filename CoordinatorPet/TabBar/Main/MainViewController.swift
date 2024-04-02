//
//  MainViewController.swift
//  CoordinatorPet
//
//  Created by mac on 27.03.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    let button = UIButton()
    
    var showTreningRequested: () -> () = { }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        buttonSetup()
    }
    
    func buttonSetup() {
        button.setTitle("Start trening", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc
    func didTapButton() {
        showTreningRequested()
    }
}
