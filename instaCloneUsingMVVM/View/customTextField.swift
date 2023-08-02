//
//  customView.swift
//  instaCloneUsingMVVM
//
//  Created by walid bouwachma on 30/7/2023.
//

import UIKit

class customTextField : UITextField{
    
    init(placeholderr : String){
        super.init(frame: .zero)
        
        borderStyle = .none
        placeholder = placeholderr
        keyboardAppearance = .dark
        backgroundColor = UIColor(white: 1, alpha: 0.3)
        setHeight(50)
        
        let space = UIView()
        space.setDimensions(height: 50, width: 12)
        leftView = space
        leftViewMode = .always
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
