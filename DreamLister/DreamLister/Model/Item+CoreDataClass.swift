//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Sujanth Sebamalaithasan on 9/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//
//

import Foundation
import CoreData


public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
}
