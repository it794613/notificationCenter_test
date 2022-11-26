//
//  NextPage.swift
//  notificationCenter_test
//
//  Created by 최진용 on 2022/11/26.
//

import UIKit

class NextPage: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: Notification.Name("pressChange"), object: nil, queue: nil) { notification in
            self.changeLabel()
            }
        
    }
    
    @IBAction func gotoNextNext(_ sender: Any) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "NextNextPage")
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    @IBOutlet weak var nextLabel: UILabel!
    
    func changeLabel(){
        nextLabel.text = "changed"
    }
    
}
