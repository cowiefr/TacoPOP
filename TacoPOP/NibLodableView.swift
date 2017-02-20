//
//  NibLodableView.swift
//  TacoPOP
//
//  Created by Fain Cowie on 2017-02-20.
//  Copyright © 2017 Fain Cowie. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
