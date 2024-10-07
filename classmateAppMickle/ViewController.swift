//
//  ViewController.swift
//  classmateAppMickle
//
//  Created by PETER MICKLE on 10/2/24.
//

import UIKit
class AppData{
   static var students : [Classmate] = [(Classmate(name: "Peter", age: 16, nickname: "Peter Kickle")), Classmate(name: "Ryan", age: 16, nickname: "Rat Ryan"), Classmate(name: "Matthew", age: 16, nickname: "Glitch Fitch"), Classmate(name: "Daniel", age: 16, nickname: "Bananiel"), Classmate(name: "Jayden Saywer", age: 17, nickname: "sleepy Saywer"), Classmate(name: "Eva Noftz", age: 18, nickname: "No pickle Noftz"), Classmate(name: "Brennan", age: 15, nickname: "Breaking Brennan"), Classmate(name: "Cam", age: 16, nickname: "Chef Cam")]
   static var curStudent = 0
    

    static func sortStudents(){
        students.sort{$0.name < $1.name}
     }
 
}

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func toStudentsAction(_ sender: Any) {
        performSegue(withIdentifier: "toStudents", sender: self)
    }
    
}

