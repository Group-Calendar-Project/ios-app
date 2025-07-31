//
//  UIStackView+Extension.swift
//  CalendarProject
//
//  Created by 이수현 on 7/30/25.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { self.addArrangedSubview($0) }
    }
}
