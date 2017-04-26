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
        if let myDelegate = delegate, let myStr = textField.text {
            myDelegate.sendText(newText: myStr)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate: RedViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeBackColor(_ f:(UIColor) -> ()) {
        f(UIColor.brown)
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
