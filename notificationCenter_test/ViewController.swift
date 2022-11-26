//
//  ViewController.swift
//  notificationCenter_test
//
//  Created by 최진용 on 2022/11/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: Notification.Name("pressChange"), object: nil, queue: nil) { notification in
            self.changeLabel()
            }
        }
        // Do any additional setup after loading the view.
 
    @IBAction func gotoNext(_ sender: Any) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "NextPage")
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    
    
    
    
    @IBOutlet weak var homeLabel: UILabel!
    
    func changeLabel(){
        homeLabel.text = "changed"
    }
}

