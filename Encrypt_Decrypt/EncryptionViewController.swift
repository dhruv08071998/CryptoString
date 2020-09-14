//
//  EncryptionViewController.swift
//  Encrypt_Decrypt
//
//  Created by Dhruv Upadhyay on 14/09/20.
//  Copyright © 2020 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class EncryptionViewController: UIViewController {
    
    @IBOutlet weak var lblAnswer: UILabel!
    @IBOutlet weak var txtEnterString: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSubmitTapped(_ sender: Any) {
        lblAnswer.text! = encryptString(input: txtEnterString.text!)
    }
    
    func encryptString(input: String) -> String {
        let characters = Array(input)
        var answer = ""
        var count = 1
        for i in 0 ... characters.count-1 {
            if i < characters.count - 1 {
                if characters[i] == characters[i+1] {
                    count+=1
                    continue
                } else {
                    answer.append(characters[i])
                    answer.append(String(count))
                    count = 1
                }
            } else {
                answer.append(characters[i])
                answer.append(String(count))
                count = 1
            }
        }
        return answer
    }
}
