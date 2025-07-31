//
//  UIView+Extension.swift
//  CalendarProject
//
//  Created by 이수현 on 7/30/25.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
