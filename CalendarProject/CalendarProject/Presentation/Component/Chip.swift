//
//  Chip.swift
//  CalendarProject
//
//  Created by 이수현 on 7/30/25.
//

import UIKit
import Kingfisher
import OSLog

/// 칩 버튼 컴포넌트
class Chip: UIButton {

    init(
        imageURL: String?,
        imageSize: CGSize,
        title: String,
        titleColor: UIColor,
        font: UIFont,
        backgroundColor: UIColor?,
        radius: CGFloat,
        borderWidth: CGFloat?,
        borderColor: UIColor?,
    ) {
        super.init(frame: .zero)
        setUI(
            imageURL: imageURL,
            imageSize: imageSize,
            title: title,
            titleColor: titleColor,
            font: font,
            backgroundColor: backgroundColor,
            radius: radius,
            borderWidth: borderWidth,
            borderColor: borderColor,
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI(
        imageURL: String?,
        imageSize: CGSize,
        title: String,
        titleColor: UIColor,
        font: UIFont,
        backgroundColor: UIColor?,
        radius: CGFloat,
        borderWidth: CGFloat?,
        borderColor: UIColor?,
    ) {
        var configuration = UIButton.Configuration.filled()
        configuration.cornerStyle = .capsule

        // Title
        configuration.title = title
        configuration.attributedTitle = AttributedString(
            title,
            attributes: AttributeContainer([
                .foregroundColor: titleColor,
                .font: font
            ])
        )

        // Image
        configuration.imagePlacement = .leading
        configuration.imagePadding = 8

        // Background
        configuration.baseBackgroundColor = backgroundColor
        configuration.background.strokeColor = borderColor
        configuration.background.strokeWidth = borderWidth ?? 0

        self.configuration = configuration

        // 이미지 설정
        guard let imageURL, let url = URL(string: imageURL) else { return }
        KingfisherManager.shared.retrieveImage(with: url) { result in
            switch result {
            case .success(let value):
                let image = value.image
                    .centerCroppedAndCircularImage(size: imageSize)
                DispatchQueue.main.async {
                    var newConfig = self.configuration
                    newConfig?.image = image
                    self.configuration = newConfig
                }
            case .failure(let error):
                os_log("Chip - ImageLoad Error: %@", error as CVarArg)
            }
        }
    }
}
