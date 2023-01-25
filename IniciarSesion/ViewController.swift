//
//  ViewController.swift
//  IniciarSesion
//
//  Created by Usuario invitado on 23/11/22.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPwd: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Cargada la GUI correctamente")

    }
    @IBAction func btnLogin(_ sender: UIButton) {
        
        let usr = txtUser.text
        let pwd = txtPwd.text
        
        if usr == "admin@uem.com", pwd == "admin" {
            performSegue(withIdentifier: "home_link", sender: nil)
            
        } else {
            print("Usuario y/o Contraseña incorrectas")
            // create the alert
             let alert = UIAlertController(title: "Oops", message: "Wrong username or password", preferredStyle: UIAlertController.Style.alert)

             // add an action (button)
             alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

             // show the alert
             self.present(alert, animated: true, completion: nil)
        }
        
    }
    @IBAction func goPressed(_ sender: UIButton) {

        if let url = URL(string: "https://password.europaeducationgroup.com/pwm/public/forgottenpassword") {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true

            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        }
        
    }
    
    
}

