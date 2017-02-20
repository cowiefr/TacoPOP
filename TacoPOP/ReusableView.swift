//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Fain Cowie on 2017-02-20.
//  Copyright © 2017 Fain Cowie. All rights reserved.
//

import UIKit


protocol ReusableView: class {}

extension ReusableView where Self: UIView {
        
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

