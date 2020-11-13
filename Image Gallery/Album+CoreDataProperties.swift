//
//  Album+CoreDataProperties.swift
//  
//
//  Created by Luis Villanueva on 13/11/2020.
//
//

import Foundation
import CoreData


extension Album {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Album> {
        return NSFetchRequest<Album>(entityName: "Album")
    }

    @NSManaged public var userId: Int16
    @NSManaged public var id: Int16
    @NSManaged public var title: String?
    @NSManaged public var image: String?

}
