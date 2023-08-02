//
//  loginViewController.swift
//  instaCloneUsingMVVM
//
//  Created by walid bouwachma on 29/7/2023.
//

import UIKit


class LoginView : UIViewController{
    
    // MARK: - COPONENTS
    private var TextfieldModel = LoginViewModel()
    private let logo : UIImageView = {
        let loogo = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white"))
        return loogo
    }()
    
    private let loginText : UITextField = {
       let login = customTextField(placeholderr: "email")
        
        return login
    }()
    
    private let PassText : customTextField = {
        let pass = customTextField(placeholderr: "password")
        pass.isSecureTextEntry = true
        
        return pass
    }()
    
    private let loginbtn : UIButton = {
        
        let btn = UIButton()
        btn.setTitle("Log In", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.5697172284, green: 0.3859269023, blue: 0.8949640393, alpha: 0.85)
        btn.layer.cornerRadius = 5
        btn.setHeight(50)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
    }()
    
    private let tosingUp : UIButton = {
       let btn = UIButton()
        btn.attributedTitle(first: "Don't have an account ? ", second: "Sign Up")
        btn.addTarget(self, action: #selector(openToSignUp), for: .touchUpInside)
        return btn
    }()
    
    private let forogotpass : UIButton = {
        let btn = UIButton()
        btn.attributedTitle(first: "forgot password?", second: "Get Help")
         return btn
        
    }()
    
    
    // MARK: - CONTRAINTS COMPONENTS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configeUI()
        configureTextfields()
    }
    
    
    //MARK: - ACTIONS
    @objc func openToSignUp(){
        let control = RegisterView()
        navigationController?.pushViewController(control, animated: true)

    }
    
    @objc func isType(sender : UITextField){
        if sender == loginText{
            TextfieldModel.email = sender.text
        }else{
            TextfieldModel.pass = sender.text
        }
     
//        loginbtn.backgroundColor = TextfieldModel.bgBtnColor
//        loginbtn.setTitleColor(TextfieldModel.titleColor, for: .normal)
        
    }
    
    
    // MARK: - HELPERS
    func configeUI(){
        view.backgroundColor = .white
        
        makeInstaBackground()
        view.addSubview(logo)
        logo.centerX(inView: view)
        logo.setDimensions(height: 80, width: 140)
        logo.anchor(top:view.topAnchor,paddingTop: 90)
        let stack = UIStackView(arrangedSubviews: [loginText,PassText,loginbtn, forogotpass])
        
        stack.axis = .vertical
        view.addSubview(stack)
        stack.spacing = 20
        
        stack.anchor(top:logo.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor , paddingTop: 32,paddingLeft: 32,paddingRight: 32)
        view.addSubview(tosingUp)
        tosingUp.centerX(inView: view)
        tosingUp.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor,paddingBottom: 15)
        
    }
    
    func configureTextfields(){
        loginText.addTarget(self, action: #selector(isType), for: .editingChanged)
        PassText.addTarget(self, action: #selector(isType), for: .editingChanged)
    }
}

