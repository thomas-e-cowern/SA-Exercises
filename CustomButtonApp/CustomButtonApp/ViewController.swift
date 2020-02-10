//
//  ViewController.swift
//  CustomButtonApp
//
//  Created by Thomas Cowern New on 2/10/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var customButton = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButtonConstrainsts()
        addActionToCustomButton()
    }

    func setUpButtonConstrainsts () {
        view.addSubview(customButton)
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        customButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
    }
    
    func addActionToCustomButton () {
        customButton.addTarget(self, action: #selector(customButtonTapped), for: .touchUpInside)
    }
    
    @objc func customButtonTapped () {
        customButton.shakeCustomButton()
    }
    
    
}

