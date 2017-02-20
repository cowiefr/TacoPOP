//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Fain Cowie on 2017-02-20.
//  Copyright © 2017 Fain Cowie. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell where T: ReusableView,
        T: NibLoadableView>(_: T.Type) {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
        
    }
    func dequeueResusableCell<T: UICollectionViewCell where T: ReusableView>(forIndexPath indexPath: NSIndexPath) -> T {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
    
}

extension UICollectionViewCell: ReusableView {}
