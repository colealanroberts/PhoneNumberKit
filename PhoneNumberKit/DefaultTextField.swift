//
//  DefaultTextField.swift
//  PhoneNumberKit
//
//  Created by Cole Roberts on 5/30/18.
//  Copyright © 2018 Roy Marmelstein. All rights reserved.
//

import UIKit

open class DefaultTextField: UITextField {
    
    fileprivate func drawBorderColor(_ color: UIColor) {
        let border = CALayer()
        
        let width = CGFloat(1.0)
        border.borderColor = color.cgColor
        border.borderWidth = width
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: frame.size.height)
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }

    override func draw(_ rect: CGRect) {
        drawBorderColor(UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00))
    }
}
