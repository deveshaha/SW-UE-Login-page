//
//  ViewController.swift
//  IniciarSesion
//
//  Created by Usuario invitado on 23/11/22.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

