//
//  NumberConfirmationViewController.swift
//  Google
//
//  Created by Ruslan on 04/06/22.
//

import UIKit

class NumberConfirmationViewController: UIViewController {

    var someNumber: String!
    
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
    
    var confirmationTitle: UILabel = {
        let label = UILabel()
        label.text = Text.confirmationTitle
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        return label
    }()
    
    lazy var confirmationTitleView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(confirmationTitle)
        return view
    }()
    
    var informationLabel: UILabel = {
        let label = UILabel()
        label.text = Text.information
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    lazy var specialCodeLabel: UILabel = {
        let label = UILabel()
        label.text = someNumber
        return label
    }()
    
    var inputConfirmationField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textField.borderStyle = .roundedRect
        textField.placeholder = Text.confirationTextFieldNumber
        return textField
    }()
    
    var confirmButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.confirmationButtonText, for: .normal)
        button.setTitleColor(UIColor.systemBackground, for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .highlighted)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.layer.cornerRadius = 15
        return button
    }()
    
    lazy var confirmationView: UIView = {
        let view = UIView()
        view.addSubview(informationLabel)
        view.addSubview(specialCodeLabel)
        view.addSubview(inputConfirmationField)
        view.addSubview(confirmButton)
        return view
    }()
    
    lazy var registrationStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [logoView, confirmationTitleView, confirmationView])
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
        
        confirmationTitleView.snp.makeConstraints { make in
            make.height.equalTo(160)
        }
        
        confirmationTitle.snp.makeConstraints { make in
            make.centerY.equalTo(confirmationTitleView)
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
        }
        
        confirmationView.snp.makeConstraints { make in
            make.height.equalTo(350)
        }
        
        informationLabel.snp.makeConstraints { make in
            make.centerX.equalTo(confirmationView)
            make.top.equalTo(confirmationView).inset(50)
            make.width.equalTo(300)
        }
        
        specialCodeLabel.snp.makeConstraints { make in
            make.centerX.equalTo(confirmationView)
            make.top.equalTo(informationLabel).inset(50)
        }
        
        inputConfirmationField.snp.makeConstraints { make in
            make.centerX.equalTo(confirmationView)
            make.top.equalTo(specialCodeLabel).inset(40)
            make.width.equalTo(280)
            make.height.equalTo(30)
        }
        
        confirmButton.snp.makeConstraints { make in
            make.centerX.equalTo(confirmationView)
            make.top.equalTo(inputConfirmationField).inset(130)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
        
        confirmButton.addTarget(self, action: #selector(onConfirmBtnTap), for: .touchUpInside)
    }
    
    func newNum() -> Int {
        let ChooseCarTypeVC = ChoseCarTypeViewController()
        ChooseCarTypeVC.onNextTap()
        return ChooseCarTypeVC.arrayWithRandomNumber[0]
    }
    
    @objc func onConfirmBtnTap() {
        
        let imageAddVC = ImageAddViewController()
        if inputConfirmationField.text == specialCodeLabel.text {
            navigationController?.pushViewController(imageAddVC, animated: true)
        } else {
            confirmationTitle.text = Text.wrongConfirmationNum
            confirmationTitle.textColor = .red
            confirmationTitle.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
            let alert = UIAlertController(title: Text.alertTitle, message: Text.wrongConfirmationNum, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: Text.tryAgain, style: .destructive, handler: {sth in
                self.confirmationTitle.text = Text.confirmationTitle
                self.confirmationTitle.font = UIFont.systemFont(ofSize: 20, weight: .light)
                self.confirmationTitle.textColor = .black
                self.specialCodeLabel.text = "\(self.newNum())"
                self.navigationController?.popToViewController(self, animated: true)
            }))
            present(alert, animated: true)
        }
    }
    
}
