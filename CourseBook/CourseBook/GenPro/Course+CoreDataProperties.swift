//
//  Course+CoreDataProperties.swift
//  CourseBook
//
//  Created by jaswanth tata on 10/11/17.
//  Copyright © 2017 jaswanth tata. All rights reserved.
//
//

import Foundation
import CoreData


extension Course {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Course> {
        return NSFetchRequest<Course>(entityName: "Course")
    }

    @NSManaged public var publishdate: NSDate?
    @NSManaged public var price: Double
    @NSManaged public var email: String?
    @NSManaged public var coursename: String?
    @NSManaged public var courseToCatagery: Catigary?
    @NSManaged public var courseToImage: Image?

}
