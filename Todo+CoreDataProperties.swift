//
//  Todo+CoreDataProperties.swift
//  TodoApp
//
//  Created by Kaori Sawamura on 2/20/16.
//  Copyright © 2016 Kaori Sawamura. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Todo {

    @NSManaged var item: String?

}
