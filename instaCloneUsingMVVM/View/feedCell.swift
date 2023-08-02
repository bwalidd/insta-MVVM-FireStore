//
//  feedCell.swift
//  instaCloneUsingMVVM
//
//  Created by walid bouwachma on 28/7/2023.
//

import UIKit

class FeedCell : UICollectionViewCell {
    
    
    // MARK: - cell components
    
    private let photo : UIImageView = {
       let pdp = UIImageView()
        pdp.contentMode = .scaleAspectFit
        pdp.clipsToBounds = true
        pdp.isUserInteractionEnabled = true
        pdp.image = #imageLiteral(resourceName: "venom-7")
        return pdp
    }()
    
    private lazy var nameProfile : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("title", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.addTarget(self, action: #selector(istapped), for: .touchUpInside)
        
        return btn
    }()
    
    private let postImage : UIImageView = {
        let pdp = UIImageView()
         pdp.contentMode = .scaleAspectFit
         pdp.clipsToBounds = true
         pdp.isUserInteractionEnabled = true
         pdp.image = #imageLiteral(resourceName: "venom-7")
         return pdp
    }()
    
    private lazy var like : UIButton = {
       let btn = UIButton()
        btn.setImage(#imageLiteral(resourceName: "like_unselected"), for: .normal)
        btn.tintColor = .black
        return btn
    }()
    
    
    private lazy var comment : UIButton = {
       let btn = UIButton()
        btn.setImage(#imageLiteral(resourceName: "comment"), for: .normal)
        btn.tintColor = .black
        return btn
    }()
    
    private lazy var share : UIButton = {
       let btn = UIButton()
        btn.setImage(#imageLiteral(resourceName: "send2"), for: .normal)
        btn.tintColor = .black
        return btn
    }()
    
    private let likecount : UILabel = {
       let textt = UILabel()
        textt.text = "1 like"
        textt.font = UIFont.boldSystemFont(ofSize: 16)
        return textt
    }()
    
    private let caption : UILabel = {
       let textt = UILabel()
        textt.text = "my caption my caption ..."
        textt.font = UIFont.boldSystemFont(ofSize: 16)
        return textt
    }()
    
    private let timeposted : UILabel = {
       let textt = UILabel()
        textt.text = "2 days ago"
        textt.font = UIFont.boldSystemFont(ofSize: 15)
        textt.textColor = .lightGray
        return textt
    }()
    
    // MARK: to configure components constraints

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photo)
        photo.anchor(top : topAnchor,left: leftAnchor,paddingTop: 12,paddingLeft: 12)
        photo.setDimensions(height: 40, width: 40)
        photo.layer.cornerRadius = 40 / 2
        
        addSubview(nameProfile)
        nameProfile.centerY(inView: photo, leftAnchor: photo.rightAnchor , paddingLeft: 8)
    
        addSubview(postImage)
        postImage.anchor(top:photo.bottomAnchor,left: leftAnchor, right: rightAnchor, paddingTop: -15)
        postImage.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        
        configBtn()

        addSubview(likecount)
        likecount.anchor(top:like.bottomAnchor,left: leftAnchor,paddingLeft: 8, paddingBottom: 8)
        
        addSubview(caption)
        caption.anchor(top:likecount.bottomAnchor,left: leftAnchor,paddingLeft: 8, paddingBottom: 8)
        
        addSubview(timeposted)
        timeposted.anchor(top:caption.bottomAnchor,left: leftAnchor,paddingLeft: 8)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - selectors
    
    @objc func istapped(){
        print("is tapped")
    }
    
    func configBtn(){
        let stack = UIStackView(arrangedSubviews: [like,comment,share])
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        
        addSubview(stack)
        stack.anchor(top:postImage.bottomAnchor,paddingTop: -20, width: 120,height: 50)
    }
}
