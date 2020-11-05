//
//  ViewController.swift
//  3rd_assignment2
//
//  Created by Seri Park on 2020/11/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var profileCollectionView: UICollectionView!
    
    var profiles: [Profile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setProfileData()
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
    }
    
    func setProfileData() {
        profiles.append(contentsOf: [
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#주혁아 #아요 #어렵다 #눈물남", imageName: "juhyeok")
        ])
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {return profiles.count}
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileViewCell.identifier, for: indexPath) as? ProfileViewCell else {
                return UICollectionViewCell()
            }
            cell.setCell(profile: profiles[indexPath.row])
        
            return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
           
           let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCell.identifier, for: indexPath) as! HeaderCell
           
           return headerView
       }

}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 225)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 41, left: 24, bottom: 0, right: 24)
    }
}




