//
//  ViewController.swift
//  GoalPost
//
//  Created by Sujanth Sebamalaithasan on 19/11/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button Pressed")
    }
    


}

