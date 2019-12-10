//
//  Apartment.swift
//  ARC
//
//  Created by Alex Paul on 12/9/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Apartment {
  var unit: String
  var tenant: Person?
  init(unit: String) {
    self.unit = unit
    print("\(unit) was created.")
  }
  deinit {
    print("\(unit) is being deinitialized.")
  }
}
