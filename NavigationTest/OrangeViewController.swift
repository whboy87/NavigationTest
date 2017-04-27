//
//  OrangeViewController.swift
//  NavigationTest
//
//  Created by SDS-012 on 2017. 4. 26..
//  Copyright © 2017년 SDS-012. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func done(_ sender: Any) {
        
        if let afunc = myFunc {
            afunc(UIColor.brown)
        }
        
        if let myDelegate = delegate, let myStr = textField.text {
            myDelegate.sendText(newText: myStr)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    var myFunc:((UIColor) -> ())? = nil
    
    var delegate: RedViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(changeColor(notification:)), name: NSNotification.Name.init(rawValue: "CHANGE_COLOR"), object: nil)
        // Do any additional setup after loading the view.
    }
    
    func changeColor(notification: NSNotification) {
        self.view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeBackColor(_ f:@escaping (UIColor) -> ()) {
        self.myFunc = f
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
