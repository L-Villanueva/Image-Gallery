//
//  Photos+CoreDataProperties.swift
//  
//
//  Created by Luis Villanueva on 13/11/2020.
//
//

import Foundation
import CoreData


extension Photos {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photos> {
        return NSFetchRequest<Photos>(entityName: "Photos")
    }

    @NSManaged public var albumId: Int16
    @NSManaged public var id: Int16
    @NSManaged public var title: String?
    @NSManaged public var url: String?
    @NSManaged public var thumbnailUrl: String?

}
