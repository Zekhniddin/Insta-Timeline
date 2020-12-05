//
//  SignInViewController.swift
//  Insta Timeline
//
//  Created by Зехниддин on 12/5/20.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Method
    
    func callSignUpController() {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
 
    // MARK: - Action
    
    @IBAction func signInButton(_ sender: Any) {
        sceneDelegate().callHomeController()
    }
    
    @IBAction func signUpController(_ sender: Any) {
        callSignUpController()
    }
    
}
