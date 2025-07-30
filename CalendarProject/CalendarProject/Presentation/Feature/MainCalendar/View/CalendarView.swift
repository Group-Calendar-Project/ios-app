//
//  CalendarView.swift
//  CalendarProject
//
//  Created by 이수현 on 3/8/25.
//

import UIKit

class CalendarView: UICalendarView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setView() {
        self.backgroundColor = .white
        let gregorianCalendar = Calendar(identifier: .gregorian)
        self.calendar = gregorianCalendar
        self.fontDesign = .rounded
        self.
    }
}
