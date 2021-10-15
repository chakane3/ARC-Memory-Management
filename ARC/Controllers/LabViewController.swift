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
    
        // requiring self in closures is a way for swift to remind us that capturing self is a strong reference and can lead to memory leaks
    
    // should we use a caputrue list [weak self]
    // or [unowned self]
    // unowned self is when both objects will de deallocated at the same time.
    lazy var complete: (Lab) -> (String) = { lab in
        self.labs.append(lab)
        return "Great job \(self.labs.count ?? 0) labs complete."
    }
      
    func markComplete(lab: Lab) -> String {
        return complete(lab)
    }
}
