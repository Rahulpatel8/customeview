//
//  CustomeView.swift
//  CustomeUIView
//
//  Created by SOTSYS024 on 02/12/16.
//  Copyright © 2016 SOTSYS024. All rights reserved.
//

import UIKit
@IBDesignable
class CustomeView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor
        }
    }
    
    //Shadow 
    
    @IBInspectable var shadowOffsetWidth: CGFloat = 0 {
        didSet {
            self.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: self.layer.shadowOffset.height)
        }
    }
    
    @IBInspectable var shadowOffsetHeight: CGFloat = 0 {
        didSet {
            self.layer.shadowOffset = CGSize(width: self.layer.shadowOffset.width, height: shadowOffsetHeight)
        }
    }
    
    @IBInspectable var shadowOpacity: CGFloat = 0 {
        didSet {
            self.layer.shadowOpacity = Float(shadowOpacity)
            self.layer.masksToBounds = false
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowColor : UIColor? {
        didSet {
            self.layer.shadowColor = shadowColor?.cgColor
        }
    }
    

}
