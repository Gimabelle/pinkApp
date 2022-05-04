//
//  ViewController.swift
//  pinkApp
//
//  Created by Gimabelle Garcia vasquez on 15/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsuario: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnRegister: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func pressLogin(_ sender: UIButton) {
    }
    @IBAction func pressRegister(_ sender: UIButton) {
        goSiginUpViewcontroller()
    }
    
    func goSiginUpViewcontroller(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "idregisterViewController") as! registerViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    
    
    
    
    
    func validacionLogin() -> Bool{
        if let textUsuario = txtUsuario.text, textUsuario.isEmpty{
            print("Ingresar un usuario")
            return false
        } else if let textPassword = txtPassword.text, textPassword.isEmpty{
            print("Ingresar Password")
            return false
        }
    return true
    }

    
    
}

