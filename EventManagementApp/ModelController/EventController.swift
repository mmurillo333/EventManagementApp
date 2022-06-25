//
//  EventController.swift
//  EventManagementApp
//
//  Created by Melinda Murillo on 6/25/22.
//

import Foundation
import CoreData

class EventController {
  // singleton, shared instance of EventController
  static let shared = EventController()
  // object array
  var events: [Event] = []
  //
  private lazy var fetchRequest: NSFetchRequest<Event> = {
    let request = NSFetchRequest<Event>(entityName: "Event")
    request.predicate = NSPredicate(value: true)
    return request
  }()  /* <-- calls our fetch request ? */

  // MARK: - CRUD/CFUD functions: Create, Read/Fetch, Update, Delete
  
  // Create
  func createEvent(){
    
    CoreDataStack.saveContext()
  }
  
  // Fetch
  func fetchEvent(){
    
  }
  
  func updateEvent() {
   
    CoreDataStack.saveContext()
  }
  
  func deleteShow() {
   
    CoreDataStack.saveContext()
  }
  
  func toggleIsAttending() {
    
  }
  
}
