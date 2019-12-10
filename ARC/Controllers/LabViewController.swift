//
//  LabViewController.swift
//  ARC
//
//  Created by Alex Paul on 12/9/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class LabViewController: UIViewController {
  var labs = Array(repeating: Lab(name: "Recursion Lab", unit: "Unit 4"), count: 25)
  
  lazy var complete: (Lab) -> (String) = { lab in
    self.labs.append(lab)
    return "Great job \(self.labs.count) labs complete."
  }
  
  func markComplete(lab: Lab) -> String {
    return complete(lab)
  }
}
