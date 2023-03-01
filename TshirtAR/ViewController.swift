//
//  ViewController.swift
//  TshirtAR
//
//  Created by Francisco Hernandez on 01/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var correoText: UITextField!
    @IBOutlet var contrasenaText: UITextField!
    @IBOutlet var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func iniciarSesion(_ sender: Any) {
        
        if validarDatos(correo: correoText.text!, contrasena: contrasenaText.text!){
            errorLabel.isHidden = true
        }
        else{
            errorLabel.isHidden = false
        }
        
    }
    
    func validarDatos(correo: String, contrasena: String) -> Bool{
        if correo.isEmpty || contrasena.isEmpty{
            return false
        }
        else{
            return true
        }
    }
    @IBAction func verRegistro(_ sender: Any) {
        self.performSegue(withIdentifier: "registroSeague", sender: self.self)
    }
    
}

