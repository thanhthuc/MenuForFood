//
//  ViewController.swift
//  MenuForFood
//
//  Created by Nguyen Thanh Thuc on 08/12/2016.
//  Copyright © 2016 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var heightTableView: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hideMenu() {
        heightTableView.constant = 200
        UIView.animate(withDuration: 0.4, animations: {
            self.heightTableView.constant = 0
            self.view.layoutIfNeeded()
        })
        
    }
    
    func showMenu() {
        heightTableView.constant = 0
        UIView.animate(withDuration: 0.4, animations: {
            self.heightTableView.constant = 200
            self.view.layoutIfNeeded()
        })
    }
    
    func addChildVCToParentVC() {
        
    }
    
    func removeChildVC() {
        
    }
}

