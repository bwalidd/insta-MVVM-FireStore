//
//  registerViewController.swift
//  instaCloneUsingMVVM
//
//  Created by walid bouwachma on 29/7/2023.
//

import UIKit


class RegisterView : UIViewController{
    
    // MARK: - components
    
    private var registerViewModel = registrationViewModel()
    private let uploadPhoto : UIButton = {
        let upload = UIButton(type: .system)
        upload.setImage(#imageLiteral(resourceName: "plus_photo"), for: .normal)
        upload.tintColor = .white
       return upload
    }()
    
    private let email : customTextField = {
        let emaill = customTextField(placeholderr: "email")
        return emaill
    }()
    
    private let password : customTextField = {
        let emaill = customTextField(placeholderr: "password")
        emaill.isSecureTextEntry = true
        return emaill
    }()
    
    private let fullname : customTextField = {
        let emaill = customTextField(placeholderr: "fullname")
        return emaill
    }()
    
    
    private let username : customTextField = {
        let emaill = customTextField(placeholderr: "username")
        return emaill
    }()
    
    
    private let signup : UIButton = {
        
        let btn = UIButton()
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.5697172284, green: 0.3859269023, blue: 0.8949640393, alpha: 0.85)
        btn.layer.cornerRadius = 5
        btn.setHeight(50)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        return btn
        
    }()
    
    private let backtologin: UIButton = {
        let btn = UIButton()
        btn.attributedTitle(first: "already have an acoount ? ", second: "Login")
        btn.addTarget(self, action: #selector(backtologinpage), for: .touchUpInside)
        return btn
    }()
    
    
    //MARK:  - Actions
    
    @objc func backtologinpage(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func isTyping(sender: UITextField){
        if sender == email{
            registerViewModel.email = sender.text
        }else if sender == password{
            registerViewModel.pass = sender.text
        }else if sender == fullname{
            registerViewModel.fullname = sender.text
        }else{
            registerViewModel.username = sender.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configueUI()
    }
    

    
    func configueUI(){
        makeInstaBackground()
        
        view.addSubview(uploadPhoto)
        uploadPhoto.setDimensions(height: 130, width: 130)
        uploadPhoto.centerX(inView: view)
        uploadPhoto.anchor(top:view.safeAreaLayoutGuide.topAnchor,paddingTop: 32)
        
        let stack = UIStackView(arrangedSubviews: [email,password,fullname,username,signup])
        view.addSubview(stack)
        stack.axis = .vertical
        stack.spacing = 20
        stack.anchor(top: uploadPhoto.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 40,paddingLeft: 30, paddingRight: 30)
        view.addSubview(backtologin)
        backtologin.centerX(inView: view)
        backtologin.anchor(bottom:view.safeAreaLayoutGuide.bottomAnchor,paddingBottom: 15)
    }
    
    func configureTextField(){
        email.addTarget(self, action: #selector(isTyping), for: .editingChanged)
        password.addTarget(self, action: #selector(isTyping), for: .editingChanged)
        fullname.addTarget(self, action: #selector(isTyping), for: .editingChanged)
        username.addTarget(self, action: #selector(isTyping), for: .editingChanged)
    }
}
