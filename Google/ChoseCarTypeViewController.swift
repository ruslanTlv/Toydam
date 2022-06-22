//
//  ChoseCarTypeViewController.swift
//  Google
//
//  Created by Ruslan on 04/06/22.
//

import UIKit

class ChoseCarTypeViewController: UIViewController {

    var arrayWithRandomNumber: [Int] = []
    
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
    
    var carNameLabel: UILabel = {
        let label = UILabel()
        label.text = Text.carName
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        return label
    }()
    
    lazy var carLabelView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(carNameLabel)
        return view
    }()
    
    var carTypeLabel: UILabel = {
        let label = UILabel()
        label.text = Text.carTypeLabelPlaceholder
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        return label
    }()
    
    var carTypeTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.borderStyle = .roundedRect
        textFeild.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textFeild.placeholder = Text.carTypeLabelPlaceholder
        return textFeild
    }()
    
    lazy var carTypeView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(carTypeLabel)
        view.addSubview(carTypeTextField)
        return view
    }()
    
    var carNumberLabel: UILabel = {
        let label = UILabel()
        label.text = Text.carNumberLabelPlaceholder
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .darkGray
        return label
    }()
    
    var carNumberTextField: UITextField = {
        let textFeild = UITextField()
        textFeild.borderStyle = .roundedRect
        textFeild.backgroundColor = UIColor.init(red: 22/255, green: 19/255, blue: 54/255, alpha: 0.2)
        textFeild.placeholder = Text.carNumberLabelPlaceholder
        return textFeild
    }()
    
    lazy var carNumberView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(carNumberLabel)
        view.addSubview(carNumberTextField)
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
    
    lazy var nextButtonView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(nextButton)
        return view
    }()
    
    lazy var registrationStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [logoView, carLabelView, carTypeView, carNumberView, nextButtonView])
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
        
        carLabelView.snp.makeConstraints { make in
            make.height.equalTo(100)
        }
        
        carNameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(carLabelView)
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
        }
        
        carTypeView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        carTypeLabel.snp.makeConstraints { make in
            make.top.equalTo(carTypeView).inset(0)
            make.left.equalTo(logo.snp_leftMargin).inset(-65)
        }
        
        carTypeTextField.snp.makeConstraints { make in
            make.centerY.equalTo(carTypeView)
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        carNumberView.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        carNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(carNumberView).inset(0)
            make.left.equalTo(logo.snp_leftMargin).inset(-65)
        }
        
        carNumberTextField.snp.makeConstraints { make in
            make.centerY.equalTo(carNumberView)
            make.left.equalTo(logo.snp_leftMargin).inset(-70)
            make.height.equalTo(30)
            make.width.equalTo(280)
        }
        
        nextButtonView.snp.makeConstraints { make in
            make.height.equalTo(100)
        }
        
        nextButton.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(nextButtonView)
            make.height.equalTo(50)
            make.width.equalTo(150)
        }
        
        nextButton.addTarget(self, action: #selector(onNextTap), for: .touchUpInside)
    }
    
    
    @objc func onNextTap() {
        let numberConfirmationVC = NumberConfirmationViewController()
        
        
        
        for _ in 0...0 {
            let randomNumber = Int.random(in: 100000...999999)
            arrayWithRandomNumber.append(contentsOf: [randomNumber])
        }
        
        for letters in carTypeTextField.text! {
            guard letters.isLetter else {
                carTypeLabel.text = Text.noCharactersAllowed
                return
            }
        }
        
        for numbers in carNumberTextField.text! {
            guard numbers.isNumber else {
                carNumberLabel.text = Text.noCharactersAllowedForPhone
                return
            }
        }
        
        if carTypeTextField.text == "" || carNumberTextField.text == "" {
            carNameLabel.text = Text.emptyFields
            carNameLabel.font = UIFont.systemFont(ofSize: 15)
            carNameLabel.textColor = .red
        } else {
            carNameLabel.textColor = .green
            carNameLabel.text = Text.carName
            carNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .light)
            carTypeLabel.text = Text.carTypeLabelPlaceholder
            carNumberLabel.text = Text.carNumberLabelPlaceholder
            numberConfirmationVC.someNumber = "\(arrayWithRandomNumber[0])"
            navigationController?.pushViewController(numberConfirmationVC, animated: true)
        }
    }
        

}
