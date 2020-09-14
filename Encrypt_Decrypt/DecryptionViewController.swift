//
//  DecryptionViewController.swift
//  Encrypt_Decrypt
//
//  Created by Dhruv Upadhyay on 14/09/20.
//  Copyright © 2020 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class DecryptionViewController: UIViewController {
    
    @IBOutlet weak var lblAnswer: UILabel!
    @IBOutlet weak var txtEnterString: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSubmitTapped(_ sender: Any) {
        lblAnswer.text = decryptString(input: txtEnterString.text!)
    }
    func decryptString(input: String) -> String {
        let characters = Array(input)
        var answer = ""
        for i in 0 ... characters.count-1 {
            if i < characters.count-1 {
                if String(characters[i]) == " " {
                    answer.append(" ")
                } else {
                    if characters[i].asciiValue! > UInt8(48) && characters[i].asciiValue! <= UInt8(57) {
                        for _ in 0 ... Int(String(characters[i]))!-1 {
                            answer.append(characters[i-1])
                        }
                    }
                }
            } else {
                if characters[i].asciiValue! > UInt8(48) && characters[i].asciiValue! <= UInt8(57) {
                    for _ in 0 ... Int(String(characters[i]))!-1 {
                        answer.append(characters[i-1])
                    }
                }
            }
        }
        return answer
    }
    
}
