//
//  CoreDataStack.swift
//  EventManagementApp
//
//  Created by Melinda Murillo on 6/25/22.
//

import CoreData

enum CoreDataStack {
  // Create container
  static let container: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "EventManagementApp")
    // loads persistent store, checks for failure, returns container
    container.loadPersistentStores { storeDescription, error in
      if let error = error {
        fatalError("Error loading persistent stores \(error)")
      }
    }
    return container
  }()
  
  // create context
  static var context: NSManagedObjectContext { container.viewContext }
  // This is when our object actually gets saved
  static func saveContext() {
    // checks for changes, save or log error. Do, try, catches are declarative
    if context.hasChanges {
      do {
        try context.save()
      } catch {
        print("Error saving context \(error)")
      }
    }
  }
  
}
