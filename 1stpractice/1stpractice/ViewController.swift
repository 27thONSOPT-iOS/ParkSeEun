//
//  ViewController.swift
//  1stpractice
//
//  Created by Seri Park on 2020/10/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func touchUpMove(_ sender: UIButton) {
        
        guard let dvc = self.storyboard?.instantiateViewController (identifier: "YellowViewController") else {
          return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
//        self.present(dvc, animated: true, completion: nil)
    }
    
    
}

