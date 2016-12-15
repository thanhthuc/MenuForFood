//
//  BlueWhiteViewController.swift
//  MenuForFood
//
//  Created by Nguyen Thanh Thuc on 15/12/2016.
//  Copyright © 2016 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

class BlueWhiteViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func facebook(_ sender: Any) {
        showLabel.text = "FACEBOOK"
    }
    
    @IBAction func twitter(_ sender: Any) {
        showLabel.text = "TWITTER"
    }

    @IBAction func googlePlus(_ sender: Any) {
        showLabel.text = "GOOGLE PLUS"
    }
}
