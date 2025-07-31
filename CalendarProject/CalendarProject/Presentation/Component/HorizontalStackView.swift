//
//  HorizontalStackView.swift
//  CalendarProject
//
//  Created by 이수현 on 7/30/25.
//

import UIKit

final class HorizontalStackView: UIStackView {
    init(spacing: CGFloat) {
        super.init(frame: .zero)
        
        self.spacing = spacing
        self.axis = .horizontal
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
