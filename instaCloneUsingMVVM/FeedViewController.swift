//
//  FeedViewController.swift
//  instaCloneUsingMVVM
//
//  Created by walid bouwachma on 27/7/2023.
//

import UIKit

private let reuseIdentifier = "thecell"
class FeedViewController : UICollectionViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .blue
        ConfigureUI()
    }
    
    func ConfigureUI(){
        collectionView.backgroundColor = .white
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
}


    // MARK: - Helpers

extension FeedViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCell
        return cell
    }
}

    // MARK: - UICOLLECTIONVIEWDELEATEFLOWLAYOUT

extension FeedViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        let heigh = width + 8 + 40 + 8 + 50 + 40
        return CGSize(width: width, height: heigh)
    }
}
