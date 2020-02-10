//
//  ViewController.swift
//  CustomButtonApp
//
//  Created by Thomas Cowern New on 2/10/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var customButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButtonConstrainsts()
        addActionToCustomButton()
        styleCustomButton()
    }

    func setUpButtonConstrainsts () {
        view.addSubview(customButton)
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        customButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
    }

    func styleCustomButton () {
        setShadow()
        customButton.setTitleColor(.white, for: .normal)
        customButton.setTitle("Bottom", for: .normal)
        customButton.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        customButton.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        customButton.layer.cornerRadius = 25
        customButton.layer.borderWidth = 3.0
        customButton.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    private func setShadow () {
        customButton.layer.shadowColor = UIColor.black.cgColor
        customButton.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        customButton.layer.shadowRadius = 8
        customButton.layer.shadowOpacity = 0.5
        customButton.clipsToBounds = true
        customButton.layer.masksToBounds = false
    }
    
    func addActionToCustomButton () {
        customButton.addTarget(self, action: #selector(customButtonTapped), for: .touchUpInside)
    }
    
    @objc func customButtonTapped () {
        shakeCustomButton()
    }
    
    func shakeCustomButton () {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: customButton.center.x - 8.0, y: customButton.center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint  = CGPoint(x: customButton.center.x + 8.0, y: customButton.center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        customButton.layer.add(shake, forKey: "position")
    }
}

