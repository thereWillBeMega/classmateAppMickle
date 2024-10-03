//
//  ViewController.swift
//  classmateAppMickle
//
//  Created by PETER MICKLE on 10/2/24.
//

import UIKit
class AppData{
   static var students : [Classmate] = []
   static var curStudent = 0
}

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppData.students.append(Classmate(name: "Peter", age: 16, nickname: "Peter Kickle"))
        AppData.students.append(Classmate(name: "Ryan", age: 16, nickname: "Rat Ryan"))
        AppData.students.append(Classmate(name: "Matthew", age: 16, nickname: "Glitch Fitch"))
        AppData.students.append(Classmate(name: "Daniel", age: 16, nickname: "Bananiel"))
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func toStudentsAction(_ sender: Any) {
        performSegue(withIdentifier: "toStudents", sender: self)
    }
    
}

