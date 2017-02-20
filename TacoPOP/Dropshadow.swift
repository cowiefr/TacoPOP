//
//  Dropshadow.swift
//  TacoPOP
//
//  Created by Fain Cowie on 2017-02-20.
//  Copyright © 2017 Fain Cowie. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        
        //implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
        
    }
}
