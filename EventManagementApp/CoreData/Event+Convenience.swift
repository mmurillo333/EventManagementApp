//
//  Event+Convenience.swift
//  EventManagementApp
//
//  Created by Melinda Murillo on 6/25/22.
// Event+Convenience This file is used to set default values of the Event object properties
// Line 12. @discardable result is used if it doesn't matter if the result is used or unused

import CoreData

extension Event {
  @discardableResult convenience init(name: String, date: Date, isAttending: Bool, context: NSManagedObjectContext = CoreDataStack.context ) {
    self.init(context: context)
    self.name = name
    self.isAttending = isAttending
//    self.id = UUID().uuidString
  }
  
  
}
