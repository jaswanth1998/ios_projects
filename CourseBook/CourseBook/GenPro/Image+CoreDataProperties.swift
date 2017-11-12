//
//  Image+CoreDataProperties.swift
//  CourseBook
//
//  Created by jaswanth tata on 10/11/17.
//  Copyright © 2017 jaswanth tata. All rights reserved.
//
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image")
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var imageToCourse: Course?
    @NSManaged public var imageToCatigary: Catigary?

}
