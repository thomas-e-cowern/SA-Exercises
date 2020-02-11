//
//  ViewController.swift
//  OutletCollectionFun
//
//  Created by Thomas Cowern New on 2/11/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDismissKeyboardTapGesture()
    }
    
    func configureTextFields () {
        
    }
    
    func createDismissKeyboardTapGesture () {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }

    @IBAction func clearButtonTapped(_ sender: Any) {
        
    }
    
}

