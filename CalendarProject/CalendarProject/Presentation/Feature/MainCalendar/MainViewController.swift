//
//  MainViewController.swift
//  CalendarProject
//
//  Created by 이수현 on 3/2/25.
//

import UIKit

class MainViewController: UIViewController {
    let calendarView = CalendarView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view = calendarView
    }


}

