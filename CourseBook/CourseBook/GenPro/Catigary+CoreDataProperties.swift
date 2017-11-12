//
//  Catigary+CoreDataProperties.swift
//  CourseBook
//
//  Created by jaswanth tata on 10/11/17.
//  Copyright © 2017 jaswanth tata. All rights reserved.
//
//

import Foundation
import CoreData


extension Catigary {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Catigary> {
        return NSFetchRequest<Catigary>(entityName: "Catigary")
    }

    @NSManaged public var name: String?
    @NSManaged public var catigaryToCourse: Course?
    @NSManaged public var catigaryToImage: Image?

}
