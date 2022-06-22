//
//  LogInViewController.swift
//  Google
//
//  Created by Ruslan on 03/06/22.
//

import UIKit

class LogInViewController: UIViewController {

    var controllNumber = 1
    
    var backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "screen_bg")
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
    }()
    
    var logo: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "logo")
        return logo
    }()
    
    var authorizationLabel: UILabel = {
        let label = UILabel()
        label.text = Text.authorizationLabel
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    var phoneTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.phoneNumberPlaceHolder
        textField.textColor = .white
        return textField
    }()
    
    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.passwordPlaceHolder
        textField.textColor = .white
        textField.isSecureTextEntry = true
        return textField
    }()
    
    var passwordMakeVisibleBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "eye"), for: .normal)
        button.imageView?.tintColor = .black
        return button
    }()
    
    var logInButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.logInButton, for: .normal)
        button.layer.backgroundColor = UIColor.systemGreen.cgColor
        button.setTitleColor(UIColor.systemBackground, for: .normal)
        button.setTitleColor(UIColor.blue, for: .highlighted)
        button.layer.cornerRadius = 15
        return button
    }()
    
    var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.forgotPasswordLabel, for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        return button
    }()
    
    var registrationButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.registrationButtonLabel, for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backgroundImage)
        view.addSubview(logo)
        view.addSubview(authorizationLabel)
        view.addSubview(phoneTextField)
        view.addSubview(passwordTextField)
        view.addSubview(passwordMakeVisibleBtn)
        view.addSubview(logInButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(registrationButton)
        allEdits()
    }
    
    func allEdits() {
        backgroundImage.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(-150)
        }
        
        logo.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(200)
            make.width.equalTo(150)
            make.height.equalTo(105)
        }
        
        authorizationLabel.snp.makeConstraints { make in
            make.top.equalTo(logo.snp_bottomMargin).inset(-60)
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
        }
        
        phoneTextField.snp.makeConstraints { make in
            make.top.equalTo(authorizationLabel.snp_bottomMargin).inset(-40)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneTextField.snp_bottomMargin).inset(-30)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        passwordMakeVisibleBtn.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTextField)
            make.right.equalTo(passwordTextField).inset(10)
        }
        
        logInButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp_bottomMargin).inset(-55)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logInButton.snp_bottomMargin).inset(-45)
        }
        
        registrationButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(forgotPasswordButton.snp_bottomMargin).inset(-10)
        }
        
        passwordMakeVisibleBtn.addTarget(self, action: #selector(onSeePassword), for: .touchUpInside)
        
        logInButton.addTarget(self, action: #selector(onLogInTap), for: .touchUpInside)
        
        registrationButton.addTarget(self, action: #selector(onRegistrationTap), for: .touchUpInside)
    }
    
    func makeVisible() {
        
        controllNumber += 1
 
        if controllNumber % 2 == 0 {
            passwordTextField.isSecureTextEntry = false
            passwordMakeVisibleBtn.imageView?.tintColor = .red
            passwordMakeVisibleBtn.setImage(UIImage(named: "eye.fill"), for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            passwordMakeVisibleBtn.imageView?.tintColor = .black
            passwordMakeVisibleBtn.setImage(UIImage(named: "eye"), for: .normal)
        }
        
    }

    @objc func onSeePassword() {
        makeVisible()
    }
    
    @objc func onLogInTap() {
        let afterLogInVC = AfterLogInSucsViewController()
    
        for numbers in phoneTextField.text! {
            guard numbers.isNumber else {
                phoneTextField.backgroundColor = .red
                let alert = UIAlertController(title: Text.alertTitle, message: Text.alertMessage, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {sth in
                    self.navigationController?.popToViewController(self, animated: true)
                    self.phoneTextField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
                }))
                present(alert, animated: true)
                return
            }
        }
        

        if phoneTextField.text == "" {
            phoneTextField.placeholder = Text.noPhoneNumber
        }  else if phoneTextField.text!.count < 9 {
            let alert = UIAlertController(title: Text.alertTitle, message: Text.noEnoughNumbers, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { sth in
                self.navigationController?.popToViewController(self, animated: true)
            }))
            present(alert, animated: true)
        } else if passwordTextField.text == "" {
            passwordTextField.placeholder = Text.noPassword
        } else {
            navigationController?.pushViewController(afterLogInVC, animated: true)
        }
    }
    
    @objc func onRegistrationTap() {
        let registrationPageVC = RegistrationPageViewController()
        navigationController?.pushViewController(registrationPageVC, animated: true)
    }
    
    
    
}
