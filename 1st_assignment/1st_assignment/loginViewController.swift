//
//  loginViewController.swift
//  1st_assignment
//
//  Created by Seri Park on 2020/10/13.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet var partTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func backClicked(_ sender: Any) {
        guard let dvc = self.presentingViewController as? ViewController else {return}
    
    
        dvc.part = self.partTextField.text
        dvc.updateHello = self.nameTextField.text
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    
       
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
