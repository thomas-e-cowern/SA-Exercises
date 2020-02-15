//
//  SurveyButton.swift
//  StackViewFun
//
//  Created by Thomas Cowern New on 2/15/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import UIKit

class SurveyButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setUpButton () {
        setTitleColor(.white, for: .normal)
        backgroundColor = .red
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 28)
        layer.cornerRadius = 10
    }
    
}
