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
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    
    let name = ["Blue","Green","Yellow"]
    
    var viewControllerArray: [UIViewController] = []
    var viewControllers: [UIViewController] {
        get {
            let immutableVC = viewControllerArray
            return immutableVC
        }
        set {
            viewControllerArray = newValue
            if activeVC == nil || viewControllerArray.index(of: activeVC!) == nil {
                activeVC = viewControllerArray.first
            }
        }
    }
    
    var activeVC: UIViewController? {
        didSet {
            removeChildVC(inActiveVC: oldValue)
            addChildVCToParentVC()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        activeVC = viewControllerArray.first
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func menuButton(_ sender: UIButton) {
        showMenu()
    }
    
    func hideMenu() {
        leftConstraint.constant = self.view.bounds.width - 30
        UIView.animate(withDuration: 0.4, animations: {
            self.leftConstraint.constant = 0
            self.view.layoutIfNeeded()
        })
    }
    
    func showMenu() {
        leftConstraint.constant = 0
        UIView.animate(withDuration: 0.4, animations: {
            self.leftConstraint.constant = self.view.bounds.width - 30
            self.view.layoutIfNeeded()
        })
    }
    
    func addChildVCToParentVC() {
        if isViewLoaded {
            if let activeVC = activeVC {
                addChildViewController(activeVC)
                activeVC.view.frame = containerView.bounds
                containerView.addSubview(activeVC.view)
                didMove(toParentViewController: self)
            }
        }
    }
    
    func removeChildVC(inActiveVC: UIViewController?) {
        if isViewLoaded {
            if let inActiveVC = inActiveVC {
                willMove(toParentViewController: nil)
                inActiveVC.view.removeFromSuperview()
                inActiveVC.removeFromParentViewController()
            }
        }
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        hideMenu()
        activeVC = viewControllerArray[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuTableViewCell
        cell.name = name[indexPath.row]
        return cell
    }
    
}




