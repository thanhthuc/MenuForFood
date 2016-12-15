//
//  BlueViewController.swift
//  MenuForFood
//
//  Created by Nguyen Thanh Thuc on 15/12/2016.
//  Copyright © 2016 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var meLabel: UILabel!
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
    @IBAction func pressMeButton(_ sender: UIButton) {
        
        if sender.tag == 0 {
            meLabel.text = "YOU PRESS ME"
            sender.tag += 1
        } else {
            meLabel.text = "ABCD"
            sender.tag -= 1
        }
        
    }

}
