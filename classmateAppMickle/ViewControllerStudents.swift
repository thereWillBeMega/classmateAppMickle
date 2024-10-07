//
//  ViewControllerStudents.swift
//  classmateAppMickle
//
//  Created by PETER MICKLE on 10/2/24.
//

import UIKit

class ViewControllerStudents: UIViewController {
    
    var editify : Bool = false
    var adding : Bool = false
    
    @IBOutlet weak var AgeOutlet: UITextField!
    
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var nicknameOutlet: UITextField!
    
    
    @IBOutlet weak var errorOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStudentDisplay()
        errorOutlet.text = ""
        // Do any additional setup after loading the view.
    }
    
    func updateStudentDisplay(){
        nameOutlet.text = "Name:  \(AppData.students[AppData.curStudent].name)"
        AgeOutlet.text = "Age: \(String(AppData.students[AppData.curStudent].age))"
        nicknameOutlet.text = "Nickname: \(AppData.students[AppData.curStudent].nickname)"
    }
    
    
    
    @IBAction func nextAction(_ sender: UIButton) {
        if AppData.curStudent < AppData.students.count - 1{
            AppData.curStudent += 1
        }else{
            AppData.curStudent = 0
        }
        updateStudentDisplay()
    }
    
    
    @IBAction func sortAction(_ sender: UIButton) {
        AppData.sortStudents()
        AppData.curStudent = 0
        updateStudentDisplay()
    }
    
    
    @IBAction func addAction(_ sender: UIButton) {
        
        
        
    }
    
    
    @IBAction func editAction(_ sender: UIButton) {
        if !editify{
            editify = true
            sender.setTitle("confrom", for: .normal)
            nameOutlet.isEnabled = true
            nameOutlet.text = AppData.students[AppData.curStudent].name
            AgeOutlet.isEnabled = true
            AgeOutlet.text = String(AppData.students[AppData.curStudent].age)
            nicknameOutlet.isEnabled = true
            nicknameOutlet.text = AppData.students[AppData.curStudent].nickname
        }else{
            if let curName = nameOutlet.text{
                print("yay")
                if let curAge = Int(AgeOutlet.text!){
                    print("yay2")
                    if let curNickname = nicknameOutlet.text{
                        print("yay3")
                        AppData.students[AppData.curStudent].nickname = curNickname
                        AppData.students[AppData.curStudent].name = curName
                        AppData.students[AppData.curStudent].age = curAge
                        updateStudentDisplay()
                        editify = false
                        sender.setTitle("edit", for: .normal)
              
                        nameOutlet.isEnabled = false
                       
                        AgeOutlet.isEnabled = false
                        nicknameOutlet.isEnabled = false
                    }else{
                        errorOutlet.text = "invalad input nickname"
                    }
                }else{
                    errorOutlet.text = "invalad input age"
                }
            }else {
                    errorOutlet.text = "invalad input name"
                }
                
            }
            
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

