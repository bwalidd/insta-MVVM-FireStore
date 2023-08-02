//
//  authenticationViewModel.swift
//  instaCloneUsingMVVM
//
//  Created by walid bouwachma on 31/7/2023.
//

import UIKit


struct LoginViewModel {
    var email : String?
    var pass : String?
    
    var isvalidForm : Bool {
        return email?.isEmpty == false && pass?.isEmpty == false
    }
    
    var bgBtnColor : UIColor {
        return isvalidForm ? #colorLiteral(red: 0.5697172284, green: 0.3859269023, blue: 0.8949640393, alpha: 0.85) : #colorLiteral(red: 0.5697172284, green: 0.3859269023, blue: 0.8949640393, alpha: 0.85).withAlphaComponent(0.7)
        
    }
    var titleColor : UIColor {
        return isvalidForm ? .white : UIColor(white: 1, alpha: 0.7)
    }
}


struct registrationViewModel {
    var email : String?
    var pass : String?
    var fullname: String?
    var username : String?
    
    var isvalidForm : Bool {
        return email?.isEmpty == false && pass?.isEmpty == false && fullname?.isEmpty == false && username?.isEmpty == false
    }
    
    var bgBtnColor : UIColor {
        return isvalidForm ? #colorLiteral(red: 0.5697172284, green: 0.3859269023, blue: 0.8949640393, alpha: 0.85) : #colorLiteral(red: 0.5697172284, green: 0.3859269023, blue: 0.8949640393, alpha: 0.85).withAlphaComponent(0.7)
        
    }
    var titleColor : UIColor {
        return isvalidForm ? .white : UIColor(white: 1, alpha: 0.7)
    }
}
