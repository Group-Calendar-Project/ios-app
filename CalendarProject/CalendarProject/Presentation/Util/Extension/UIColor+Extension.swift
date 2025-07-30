//
//  UIColor+Extension.swift
//  CalendarProject
//
//  Created by 이수현 on 3/2/25.
//

import UIKit

extension UIColor {
    // Hex 문자열을 UIColor로 변환하는 메서드
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        // Hex 문자열 길이에 따라 RGB 값을 추출
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        // UIColor 초기화
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

extension UIColor {
    static let main = UIColor(hex: "#F45353")
    static let secondary = UIColor.black.withAlphaComponent(0.5)
    static let disabled = UIColor.black.withAlphaComponent(0.3)
    static let negative = UIColor(hex: "#FF5346")
    static let appleBlue = UIColor(hex: "#7ACBFF")
    static let appleRed = UIColor(hex: "#FF4F69")
    static let appleGreen = UIColor(hex: "#D9FBD6")
    static let appleMidGreen = UIColor(hex: "#A9DEA2")
    static let appleYellow = UIColor(hex: "#FAC062")
    static let gray95 = UIColor(hex: "#F1EDEC")
    static let gray98 = UIColor(hex: "#FAF8F7")
    static let gray21 = UIColor(hex: "#363131")
}

