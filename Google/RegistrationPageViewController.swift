//
//  RegistrationPageViewController.swift
//  Google
//
//  Created by Ruslan on 04/06/22.
//

import UIKit

class RegistrationPageViewController: UIViewController {

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
    
    lazy var logoView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(logo)
        return view
    }()
    
    var registrationLabel: UILabel = {
        let label = UILabel()
        label.text = Text.registrationLabel
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    lazy var registrationView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(registrationLabel)
        return view
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = Text.nameTextPlaceHolder
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .darkGray
        return label
    }()
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.nameTextPlaceHolder
        return textField
    }()
    
    lazy var nameView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        return view
    }()
    
    var dateOfBirthLabel: UILabel = {
        let label = UILabel()
        label.text = Text.birthTextPlaceHolder
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .darkGray
        return label
    }()
    
    var dateOfBirthTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.birthTextPlaceHolder
        return textField
    }()
    
    lazy var dateOfBirthView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(dateOfBirthLabel)
        view.addSubview(dateOfBirthTextField)
        return view
    }()
    
    var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = Text.phoneNumberTextPlaceHolder
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .darkGray
        return label
    }()
    
    var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.phoneNumberTextPlaceHolder
        return textField
    }()
    
    lazy var phoneNumberView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(phoneNumberLabel)
        view.addSubview(phoneNumberTextField)
        return view
    }()
    
    var adressLabel: UILabel = {
        let label = UILabel()
        label.text = Text.adressTextPlaceHolder
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .darkGray
        return label
    }()
    
    var adressTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.adressTextPlaceHolder
        return textField
    }()
    
    lazy var adressView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(adressLabel)
        view.addSubview(adressTextField)
        return view
    }()
    
    var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = Text.passwordTextPlaceHolder
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .darkGray
        return label
    }()
    
    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.passwordTextPlaceHolder
        return textField
    }()
    
    lazy var passwordView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        return view
    }()
    
    var repeatPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = Text.repeatPasswordTextPlaceHolder
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .darkGray
        return label
    }()
    
    var repeatPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.placeholder = Text.repeatPasswordTextPlaceHolder
        return textField
    }()
    
    lazy var repeatPasswordView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(repeatPasswordLabel)
        view.addSubview(repeatPasswordTextField)
        return view
    }()
    
    var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.nextButton, for: .normal)
        button.setTitleColor(UIColor.systemBackground, for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .highlighted)
        button.layer.backgroundColor = UIColor.systemGreen.cgColor
        button.layer.cornerRadius = 15
        return button
    }()
    
    lazy var buttonView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(nextButton)
        return view
    }()
    
    lazy var registrationStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [logoView, registrationView, nameView, dateOfBirthView, phoneNumberView, adressView, passwordView, repeatPasswordView, buttonView])
        stackView.axis = .vertical
        stackView.distribution = .fill
        return stackView
    }()
    
    lazy var scroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = false
        scroll.alwaysBounceVertical = true
        scroll.addSubview(registrationStackView)
        return scroll
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backgroundImage)
        view.addSubview(scroll)
        allEdits()
    }
    
    func allEdits() {
        backgroundImage.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(-150)
        }
        
        

        scroll.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.top.bottom.left.right.equalToSuperview().inset(0)
        }
        
        registrationStackView.snp.makeConstraints { make in
            make.bottom.left.right.equalTo(scroll).inset(0)
            make.top.equalTo(scroll).inset(0)
            make.width.equalTo(scroll)
        }
        
        logoView.snp.makeConstraints { make in
            make.height.equalTo(100)
        }
        
        logo.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(logoView)
            make.width.equalTo(150)
            make.height.equalTo(105)
        }
        
        registrationView.snp.makeConstraints { make in
            make.height.equalTo(65)
        }
        
        registrationLabel.snp.makeConstraints { make in
            make.centerY.equalTo(registrationView)
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
        }
        
        nameView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.top.equalTo(nameView).inset(0)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.centerY.equalTo(nameView)
            make.left.equalTo(logo.snp_leftMargin).inset(-75)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        dateOfBirthView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        dateOfBirthLabel.snp.makeConstraints { make in
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.top.equalTo(dateOfBirthView).inset(0)
        }
        
        dateOfBirthTextField.snp.makeConstraints { make in
            make.centerY.equalTo(dateOfBirthView)
            make.left.equalTo(logo.snp_leftMargin).inset(-75)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        phoneNumberView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        phoneNumberLabel.snp.makeConstraints { make in
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.top.equalTo(phoneNumberView).inset(0)
        }
        
        phoneNumberTextField.snp.makeConstraints { make in
            make.centerY.equalTo(phoneNumberView)
            make.left.equalTo(logo.snp_leftMargin).inset(-75)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        adressView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        adressLabel.snp.makeConstraints { make in
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.top.equalTo(adressView).inset(0)
        }
        
        adressTextField.snp.makeConstraints { make in
            make.centerY.equalTo(adressView)
            make.left.equalTo(logo.snp_leftMargin).inset(-75)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        passwordView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.top.equalTo(passwordView).inset(0)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.centerY.equalTo(passwordView)
            make.left.equalTo(logo.snp_leftMargin).inset(-75)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        repeatPasswordView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        repeatPasswordLabel.snp.makeConstraints { make in
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.top.equalTo(repeatPasswordView).inset(0)
        }
        
        repeatPasswordTextField.snp.makeConstraints { make in
            make.centerY.equalTo(repeatPasswordView)
            make.left.equalTo(logo.snp_leftMargin).inset(-75)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        buttonView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        nextButton.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(buttonView)
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
        
        nextButton.addTarget(self, action: #selector(onNextTap), for: .touchUpInside)
    }
    
    @objc func onNextTap() {
        let chooseCarVC = ChoseCarTypeViewController()
        
        for letters in nameTextField.text! {
            guard letters.isLetter else {
                nameLabel.text = Text.noCharactersAllowed
                return
            }
        }
        for numbers in phoneNumberTextField.text! {
            if numbers.isNumber {
                phoneNumberLabel.text = Text.phoneNumberTextPlaceHolder
            } else {
                phoneNumberLabel.text = Text.noCharactersAllowedForPhone
                nameLabel.text = Text.nameTextPlaceHolder
                return
            }
            
            guard phoneNumberTextField.text!.count >= 9 else {
                phoneNumberLabel.text = Text.noEnoughNumbers
                return
            }
        }
        
        
        guard passwordTextField.text!.count > 9 || passwordTextField.text!.count == 0  else {
            passwordLabel.text = Text.noSecurePassword
            repeatPasswordLabel.text = Text.repeatPasswordTextPlaceHolder
            return
        }
        
        guard  passwordTextField.text == repeatPasswordTextField.text else {
            repeatPasswordLabel.text = Text.differentPasswords
            passwordLabel.text = Text.passwordTextPlaceHolder
            return
        }
        
        
        if nameTextField.text == "" || dateOfBirthTextField.text == "" || phoneNumberTextField.text == "" || adressTextField.text == "" || passwordTextField.text == "" || repeatPasswordTextField.text == "" {
            registrationLabel.text = Text.emptyFields
            registrationLabel.font = UIFont.systemFont(ofSize: 15)
            registrationLabel.textColor = .red
            passwordLabel.text = Text.passwordTextPlaceHolder
            repeatPasswordLabel.text = Text.repeatPasswordTextPlaceHolder
        } else {
            registrationLabel.text = Text.registrationLabel
            registrationLabel.textColor = .green
            phoneNumberLabel.text = Text.phoneNumberTextPlaceHolder
            repeatPasswordLabel.text = Text.repeatPasswordTextPlaceHolder
            navigationController?.pushViewController(chooseCarVC, animated: true)
        }
    }
}
