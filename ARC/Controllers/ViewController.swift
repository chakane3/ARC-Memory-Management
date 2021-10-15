//
//  ViewController.swift
//  ARC
//
//  Created by Alex Paul on 12/9/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class Fellow {
    var name: String
    var cohort: Double
    
    
    // called when object is created
    init(name: String, cohort: Double) {
        self.name = name
        self.cohort = cohort
        print("fwllow with \(name) was created.")
    }
    
    deinit {
        print("\(name) was deinitialized.")
    }
}

class ViewController: UIViewController {
    var fellow: Fellow?
    var fellow1: Fellow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    
        configurePersonApartment()
      configureLabController()
        fellow = Fellow(name: "Random Fellow", cohort: 4.0)
        fellow1 = fellow
        
        fellow = nil
        fellow1 = nil // at this point our class is deinitialized and relased from memory
    }
    
    func configurePersonApartment() {
        var alex: Person?
        var apartment: Apartment?
        
        alex = Person(name: "Alex")
        apartment = Apartment(unit: "Apt 6B")
        
        alex?.apartment = apartment
        apartment?.tenant = alex
        
        alex = nil
        apartment = nil
    }
  
  func configureLabController() {
    let lab = Lab(name: "Concurrency", unit: "Unit 3")
    var labViewController: LabViewController?
    labViewController = LabViewController()
    print(labViewController?.markComplete(lab: lab) ?? "")
    
    labViewController = nil
  }
}

