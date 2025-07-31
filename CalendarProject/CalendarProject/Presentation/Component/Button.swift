//
//  Button.swift
//  CalendarProject
//
//  Created by 이수현 on 7/31/25.
//

import UIKit

final class Button: UIButton {
    init(
        title: String,
        titleColor: UIColor?,
        font: UIFont,
        backgroundColor: UIColor?,
        cornerRadius: CGFloat = 8
    ) {
        super.init(frame: .zero)

        setUI(
            title: title,
            titleColor: titleColor,
            font: font,
            backgroundColor: backgroundColor,
            cornerRadius: cornerRadius
        )
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUI(
        title: String,
        titleColor: UIColor?,
        font: UIFont,
        backgroundColor: UIColor?,
        cornerRadius: CGFloat
    ) {
        var configuration = UIButton.Configuration.filled()
        configuration.attributedTitle = AttributedString(title, attributes: AttributeContainer([
            .foregroundColor: titleColor ?? .black,
            .font: font
        ]))

        configuration.baseBackgroundColor = backgroundColor
        self.configuration = configuration
        self.layer.cornerRadius = cornerRadius
    }
}
