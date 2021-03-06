//
//  GreenViewController.swift
//  NavigationTest
//
//  Created by SDS-012 on 2017. 4. 26..
//  Copyright © 2017년 SDS-012. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet var myStrLabel: UILabel!
    
    var myStr: String? = nil

    @IBAction func changeBackColor(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name.init(rawValue: "CHANGE_COLOR"), object: nil, userInfo: nil)
    }
    
    @IBAction func delegateChangeBackColor(_ sender: Any) {
        
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            appdelegate.bgColor = UIColor.yellow
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let str = myStr {
            myStrLabel.text = str
        } else if let appdelegate =  UIApplication.shared.delegate as? AppDelegate {
            myStrLabel.text = appdelegate.myName
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
