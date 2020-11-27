//
//  LoginVC.swift
//  SOPT_iOS_6th_seminar
//
//  Created by Seri Park on 2020/11/24.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func touchUpLogin(_ sender: Any) {
        guard let emailText = emailTextField.text,
              let passwordText = passwordTextField.text else {
            return
        }
        
        AuthService.shared.signIn(email: emailText,
                                  password: passwordText) { (networkResult) in
            switch networkResult {
            case .success(let data):
                if let data = data as? SignInData {
                    self.simpleAlert(title: "로그인 성공", message: "\(data.userName)님 로그인 성공!")
                    UserDefaults.standard.set(data.userName, forKey: "userName")
                }
                
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "로그인 실패", message: message)
                }
                print("requsetErr")
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
    }

    
    @IBAction func touchUpSignUp(_ sender: Any) {
            let signUpStoryboard = UIStoryboard(name: "SignUp", bundle: nil)
            
            if let dvc = signUpStoryboard.instantiateViewController(identifier: "SignUpVC") as? SignUpVC {
                dvc.modalPresentationStyle = .fullScreen
                self.present(dvc, animated: true, completion: nil)
            }
        }
    
}


