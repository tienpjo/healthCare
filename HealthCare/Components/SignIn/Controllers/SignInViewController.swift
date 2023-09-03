//
//  SignInViewController.swift
//  HealthCare
//
//  Created by Tran Duc Tien on 02/09/2023.
//

import UIKit

class SignInViewController:UIViewController,UITextFieldDelegate{
     
    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image =  UIImage(named: "Health Care Logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "Enter email..."
        emailTextField.textColor  = #colorLiteral(red: 0.4160801768, green: 0.4719950557, blue: 0.4808731675, alpha: 1)
        emailTextField.layer.borderColor = #colorLiteral(red: 0.4160801768, green: 0.4719950557, blue: 0.4808731675, alpha: 1)
        emailTextField.layer.borderWidth = 1.0
        emailTextField.layer.cornerRadius = 8.0
        emailTextField.leftViewMode  = .always
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        return emailTextField
    }()
    
    
    private let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter password..."
        passwordTextField.textColor  = #colorLiteral(red: 0.4160801768, green: 0.4719950557, blue: 0.4808731675, alpha: 1)
        passwordTextField.layer.borderColor = #colorLiteral(red: 0.4160801768, green: 0.4719950557, blue: 0.4808731675, alpha: 1)
        passwordTextField.layer.borderWidth = 1.0
        passwordTextField.layer.cornerRadius = 8.0
        passwordTextField.leftViewMode  = .always
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        return passwordTextField
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewLogoImageView()
        setupEmailTextField()
        setupPasswordTextField()
    }
    
    private func setupViewLogoImageView(){
        let stack = UIStackView()
//        stack.backgroundColor = .red
//        stack.axis = NSLayoutConstraint.Axis.vertical
//        stack.alignment = UIStackView.Alignment.center
//        stack.translatesAutoresizingMaskIntoConstraints = false;
//        stack.addArrangedSubview(logoImage)
//        view.addSubview(stack)
//        stack.widthAnchor.constraint(equalToConstant: 220).isActive = true
//        stack.heightAnchor.constraint(equalToConstant: 60).isActive = true
//        stack.topAnchor.constraint(equalTo: self.view.topAnchor, constant:200).isActive = true
        //stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(175)
            make.centerX.equalToSuperview()
        }
    }
    
    private func setupEmailTextField(){
        view.addSubview(emailTextField)
        emailTextField.delegate = self
        emailTextField.snp.makeConstraints { make in
            make.width.equalTo(328)
            make.height.equalTo(50)
            make.top.equalTo(logoImage.snp.bottom).offset(200)
            make.centerX.equalToSuperview()
            
        }
    }
    
    private func setupPasswordTextField(){
        view.addSubview(passwordTextField)
        passwordTextField.delegate = self
        passwordTextField.snp.makeConstraints { make in
            make.width.equalTo(328)
            make.height.equalTo(50)
            make.top.equalTo(emailTextField.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
            
        }
    }
    
    
    internal func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == emailTextField{
            emailTextField.layer.borderColor = #colorLiteral(red: 0.2189741433, green: 0.5989804864, blue: 0.9995236993, alpha: 1)
            emailTextField.layer.borderWidth = 2.0
        }
        if textField == passwordTextField{
            passwordTextField.layer.borderColor = #colorLiteral(red: 0.2189741433, green: 0.5989804864, blue: 0.9995236993, alpha: 1)
            passwordTextField.layer.borderWidth = 2.0
        }

    }
    
    internal func textFieldDidEndEditing(_ textField: UITextField) {
        emailTextField.layer.borderWidth = 1
        passwordTextField.layer.borderWidth  = 1 
    }
    
    
}
