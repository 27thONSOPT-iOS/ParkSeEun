//
//  ProfileViewCell.swift
//  3rd_assignment2
//
//  Created by Seri Park on 2020/11/05.
//

import UIKit

class ProfileViewCell: UICollectionViewCell {
    
    static let identifier = "ProfileViewCell"
       
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var profileNameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    func setCell (profile: Profile) {
           profileImageView.image = profile.makeImage()
           profileNameLabel.text = profile.name
           descriptionLabel.text = profile.description
       }
}
