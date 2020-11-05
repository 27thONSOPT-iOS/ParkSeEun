//
//  Profile.swift
//  3rd_assignment2
//
//  Created by Seri Park on 2020/11/05.
//

import UIKit

struct Profile {
    var name : String
    var description : String
    var imageName : String
    
    func makeImage () -> UIImage? {
        return UIImage (named: imageName)
    }
}
