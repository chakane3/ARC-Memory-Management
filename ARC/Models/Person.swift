//
//  Person.swift
//  ARC
//
//  Created by Alex Paul on 12/9/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Person {
  var apartment: Apartment?
  var name: String
  init(name: String) {
    self.name = name
    print("\(name) was created.")
  }
  deinit {
    print("\(name) is being deinitialized.")
  }
}
