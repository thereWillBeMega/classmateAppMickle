//
//  CrazyCell.swift
//  classmateAppMickle
//
//  Created by PETER MICKLE on 10/11/24.
//

import Foundation
import UIKit

class CrazyCell : UITableViewCell{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nickNameOutlet: UILabel!
    func configure(hi: Classmate){
        nameLabel.text = "Name: \(hi.name)"
        ageLabel.text = "Age: \(hi.age)"
        nickNameOutlet.text = "Nickname: \(hi.nickname)"
    }
}

// but snatleys story was not yet over.

// see, snatley was not actually dead, he was just really cool.
//so cool infact that that other narrator thought that he was dead!
// but i am the better narrator, i am so cooler.

// but peter needs to "make a program" so he "doesnt fail comp sci" so this is the real end of a story of a man named snatley
