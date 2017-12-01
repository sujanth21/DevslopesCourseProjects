//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Sujanth Sebamalaithasan on 1/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTxtFld: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createGoalBtn.bindToKeyboard()
        
        pointsTxtFld.delegate = self
    }

    @IBAction func createGoalBtnPressed(_ sender: Any) {
        
        //Pass data into CoreDate Goal Model
        
        
    }
    
    
    
    

}
