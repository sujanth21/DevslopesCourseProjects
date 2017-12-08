//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Sujanth Sebamalaithasan on 9/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType")
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
