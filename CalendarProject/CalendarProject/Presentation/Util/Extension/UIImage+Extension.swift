//
//  UIImage+Extension.swift
//  CalendarProject
//
//  Created by 이수현 on 7/30/25.
//

import UIKit

extension UIImage {
    /// 이미지 리사이징
    func resizedImage(size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: size))
        }
    }

    func makeCircularImage(size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            let rect = CGRect(origin: .zero, size: size)
            UIBezierPath(ovalIn: rect).addClip()   // 원형 클리핑
            self.draw(in: rect)
        }
    }

    /// 이미지를 비율 유지하며 center crop → 리사이징 → 원형 마스킹 하는 방식
    func centerCroppedAndCircularImage(size targetSize: CGSize) -> UIImage {
        // 1. 중심 자르기
        let originalSize = self.size
        let cropSize = min(originalSize.width, originalSize.height)
        let x = (originalSize.width - cropSize) / 2
        let y = (originalSize.height - cropSize) / 2
        let cropRect = CGRect(x: x, y: y, width: cropSize, height: cropSize)

        guard let cgImage = self.cgImage?.cropping(to: cropRect) else { return self }

        let croppedImage = UIImage(cgImage: cgImage)

        // 2. 리사이징 + 원형 마스킹
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        return renderer.image { _ in
            let rect = CGRect(origin: .zero, size: targetSize)
            UIBezierPath(ovalIn: rect).addClip()
            croppedImage.draw(in: rect)
        }
    }
}
