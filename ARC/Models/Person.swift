//
//  Person.swift


import Foundation

class Person {
  weak var apartment: Apartment?
  var name: String
  init(name: String) {
    self.name = name
    print("\(name) was created.")
  }
  deinit {
    print("\(name) is being deinitialized.")
  }
}
