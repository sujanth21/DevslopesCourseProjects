//
//  ItemDetailVC.swift
//  DreamLister
//
//  Created by Sujanth Sebamalaithasan on 12/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ItemDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
    }


}
