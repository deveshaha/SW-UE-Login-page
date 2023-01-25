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
    @IBAction func btnLogin(_ sender: Any) {
        
        let usr = txtUser.text
        let pwd = txtPwd.text
        
        if usr == "test@ue.com", pwd == "test" {
            performSegue(withIdentifier: "home_link", sender: nil)
        }
        
    }
    @IBAction func goPressed(_ sender: UIButton) {
        if let url = URL(string: "https://password.europaeducationgroup.com/pwm/public/forgottenpassword") {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true

            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        } else {
            let alert = UIAlertController(title: "Your title", message: "Your message", preferredStyle: .alert)
                
                 let ok = UIAlertAction(title: "OK", style: .default, handler: { action in
                 })
                 alert.addAction(ok)
                 let cancel = UIAlertAction(title: "Cancel", style: .default, handler: { action in
                 })
                 alert.addAction(cancel)
                 DispatchQueue.main.async(execute: {
                    self.present(alert, animated: true)
            })
  
        }
    }
    
}

