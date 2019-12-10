//
//  ViewController.swift
//  ARC
//
//  Created by Alex Paul on 12/9/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad")
    
    configurePersonApartment()
    
    //configureLabController()
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

