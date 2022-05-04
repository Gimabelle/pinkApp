//
//  registerViewController.swift
//  pinkApp
//
//  Created by Gimabelle Garcia vasquez on 16/3/22.
//

import UIKit

class registerViewController: UIViewController {

    @IBOutlet weak var btnClose: UIButton!
    @IBOutlet weak var btnHeartlogo: UIImageView!
    @IBOutlet weak var lblRegister: UILabel!
    @IBOutlet weak var lblFristName: UILabel!
    @IBOutlet weak var txtEnterName: UITextField!
    @IBOutlet weak var lblLastNa: UILabel!
    @IBOutlet weak var txtEnterlastName: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtEnterPass: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var btnCreateAccount: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressCreateAccount(_ sender: UIButton) {
        if validacionCreateAccount() {
        }
    }
    
    func validacionCreateAccount() -> Bool{
        if let textFristName = txtEnterName.text, textFristName.isEmpty{
            print(" Enter name")
            return false
        } else if let textLastName = txtEnterlastName.text, textLastName.isEmpty{
            print(" Enter last name")
            return false
        }else if let textEma = txtEmail.text, textEma.isEmpty{
            print(" Enter Email ")
            return false
        } else if let textPass = txtEnterPass.text, textPass.isEmpty{
            print(" Enter password")
            return false
        }
        return true
    }
    
    
    
    
}
