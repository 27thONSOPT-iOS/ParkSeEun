//
//  SignUpVC.swift
//  SOPT_iOS_6th_seminar
//
//  Created by Seri Park on 2020/11/24.
//

import UIKit

class SignUpVC: UIViewController {


    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var userNameTextField: UITextField!
    
override func viewDidLoad() {
    super.viewDidLoad()

}

    
@IBAction func touchUpSignUp(_ sender: Any) {
    guard let signUpEmailText = emailTextField.text,
          let signUpPwText = passwordTextField.text,
          let signUpNameText = userNameTextField.text else {
        return
    }
    
    AuthService.shared.signUp(email: signUpEmailText, password: signUpPwText, username: signUpNameText)
    { (networkResult) -> (Void) in
        switch networkResult {
        case .success(let data):
            if let signUpData = data as? SignUpData {
                UserDefaults.standard.set(signUpData.userName, forKey: "userName")
            }
            self.dismiss(animated: true, completion: nil)

        case .requestErr:
            print("requestErr")
        case .pathErr:
            print("pathErr")
        case .serverErr:
            print("serverErr")
        case .networkFail:
            print("networkFail")
        }
    }
    
}

    
}
