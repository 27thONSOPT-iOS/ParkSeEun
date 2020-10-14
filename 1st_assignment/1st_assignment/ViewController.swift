//
//  ViewController.swift
//  1st_assignment
//
//  Created by Seri Park on 2020/10/13.
//

import UIKit

class ViewController: UIViewController {

    
  
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var sayHelloLabel: UILabel!
    
    var part : String?
    var updateHello : String?
    
    func setLabel () {
        if let part = self.part,
           let updateHello = self.updateHello {
            self.partLabel.text = part
            self.partLabel.sizeToFit()
            self.sayHelloLabel.text = "\(updateHello)님 안녕하세요~^^"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        setLabel()
    }
    
    @IBAction func goToNavi(_ sender: UIButton) {
        guard let goNC = self.storyboard?.instantiateViewController(identifier: "NavigationController") else{return}
        self.present(goNC, animated: true, completion: nil)
    }
    
}

