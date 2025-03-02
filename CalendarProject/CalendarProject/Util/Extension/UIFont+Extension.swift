//
//  UIFont+Extension.swift
//  CalendarProject
//
//  Created by 이수현 on 3/2/25.
//

import UIKit

struct FontName {
    static let predendardThin = "Pretendard-Thin"
    static let predendardRegular = "Pretendard-Regular"
    static let predendardMedium = "Pretendard-Medium"
    static let predendardLight = "Pretendard-Light"
    static let predendardExtraLight = "Pretendard-ExtraLight"
    static let predendardExtraBold = "Pretendard-ExtraBold"
    static let predendardBold = "Pretendard-Bold"
    static let predendardSemiBold = "Pretendard-SemiBold"
    static let predendardBlack = "Pretendard-Black"
}


extension UIFont {

    // Pretendard Thin Font
    public class func ptdThinFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardThin, size: size) ?? .systemFont(ofSize: size)
    }
    
    // Pretendard ExtraLight Font
    public class func ptdExtraLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardExtraLight, size: size) ?? .systemFont(ofSize: size)
    }
    
    // Pretendard Light Font
    public class func ptdLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardLight, size: size) ?? .systemFont(ofSize: size)
    }

    // Pretendard Regular Font
    public class func ptdRegularFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardRegular, size: size) ?? .systemFont(ofSize: size)
    }
    
    // Pretendard Medium Font
    public class func ptdMediumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardMedium, size: size) ?? .systemFont(ofSize: size)
    }
    
    // Pretendard SemiBold Font
    public class func ptdSemiBoldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardSemiBold, size: size) ?? .systemFont(ofSize: size)
    }
    
    // Pretendard Bold Font
    public class func ptdBoldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardBold, size: size) ?? .systemFont(ofSize: size)
    }

    // Pretendard ExtraBold Font
    public class func ptdExtraBoldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardExtraBold, size: size) ?? .systemFont(ofSize: size)
    }

    // Pretendard Black Font
    public class func ptdBlackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontName.predendardBlack, size: size) ?? .systemFont(ofSize: size)
    }
}
