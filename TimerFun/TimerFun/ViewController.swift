//
//  ViewController.swift
//  TimerFun
//
//  Created by Thomas Cowern New on 2/10/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let countLabel = UILabel()
    var colorTimer = Timer()
    var countLabelTimer = Timer()
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLabel()
        view.backgroundColor = .random()
        countLabelTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(incrementCounLabel), userInfo: nil, repeats: true)
        colorTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(changeBackground), userInfo: nil, repeats: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.countLabelTimer.invalidate()
            self.colorTimer.invalidate()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        colorTimer.invalidate()
    }
    
    @objc func changeBackground () {
        view.backgroundColor = .random()
    }
    
    @objc func incrementCounLabel () {
        count += 1
        countLabel.text = String(count)
    }

    func configureLabel () {
        view.addSubview(countLabel)
        
        countLabel.font = UIFont.systemFont(ofSize: 100, weight: .bold)
        countLabel.textAlignment = .center
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1.0),
            countLabel.centerYAnchor.constraint(equalToSystemSpacingBelow: view.centerYAnchor, multiplier: 1.0),
            countLabel.heightAnchor.constraint(equalToConstant: 300),
            countLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
    }

}

