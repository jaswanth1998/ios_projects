//
//  Course+CoreDataClass.swift
//  CourseBook
//
//  Created by jaswanth tata on 10/11/17.
//  Copyright © 2017 jaswanth tata. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Course)
public class Course: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.publishdate = NSDate()
    }
}
