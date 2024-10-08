//
//  UIView+PinnedSubview.swift
//  Today
//
//  Created by Likhitha Mandapati on 7/7/24.
//

import UIKit

extension UIView {
    
    func addPinnedSubview(_ subview: UIView, height: CGFloat? = nil,
                          insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)) {
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subview.topAnchor.constraint(equalTo: topAnchor, constant: insets.top),
            subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: insets.left),
            subview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -insets.right),
            subview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom)
        ])
        if let height = height {
            subview.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
