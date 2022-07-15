//
//  Student+CoreDataProperties.swift
//  demo2
//
//  Created by Owner on 2022-07-14.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var course: String?

}

extension Student : Identifiable {

}
