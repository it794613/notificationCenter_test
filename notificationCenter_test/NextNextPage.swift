//
//  NextNextPage.swift
//  notificationCenter_test
//
//  Created by 최진용 on 2022/11/26.
//

import UIKit

class NextNextPage: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func changeAllLabel(_ sender: Any) {
        NotificationCenter.default.post(Notification(name: Notification.Name("pressChange")))
    }
    
    
}
