//
//  CustomButton.swift
//  CustomButtonApp
//
//  Created by Thomas Cowern New on 2/10/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import UIKit

class CustomButton : UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpButton()
//        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpButton () {
        styleCustomButton()
    }
    
    private func setShadow () {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
    func shakeCustomButton () {
        let shake           = CABasicAnimation(keyPath: "position")
        shake.duration      = 0.1
        shake.repeatCount   = 2
        shake.autoreverses  = true
        
        let fromPoint       = CGPoint(x: center.x - 8.0, y: center.y)
        let fromValue       = NSValue(cgPoint: fromPoint)
        
        let toPoint         = CGPoint(x: center.x + 8.0, y: center.y)
        let toValue         = NSValue(cgPoint: toPoint)
        
        shake.fromValue     = fromValue
        shake.toValue       = toValue
        
        layer.add(shake, forKey: "position")
    }
    
    func styleCustomButton () {
        setShadow()
        setTitleColor(.white, for: .normal)
        setTitle("Bottom", for: .normal)
        backgroundColor     = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        titleLabel?.font    = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius  = 25
        layer.borderWidth   = 3.0
        layer.borderColor   = UIColor.darkGray.cgColor
    }
    
}
