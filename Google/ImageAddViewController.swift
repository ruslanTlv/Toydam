//
//  ImageAddViewController.swift
//  Google
//
//  Created by Ruslan on 05/06/22.
//

import UIKit

class ImageAddViewController: UIViewController {

    var addPicString: String!
    
    var backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "screen_bg")
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
    }()
    
    var addImgBtn: UIButton = {
        let button = UIButton()
        button.setTitle(Text.addImgText, for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        button.layer.borderWidth = 1
        button.setImage(UIImage(named: "plus.circle" ), for: .normal)
        button.imageView?.tintColor = UIColor.systemGreen
        button.layer.cornerRadius = 10
        return button
    }()
    
    var spaceForImage: UIImageView = {
        let pic = UIImageView()
        pic.image = UIImage(named: "person.badge.plus")
        pic.layer.borderWidth = 3
        pic.layer.cornerRadius = 125
        pic.contentMode = .scaleAspectFill
        pic.tintColor = UIColor.systemBackground
        pic.backgroundColor = .darkGray
        pic.clipsToBounds = true
        return pic
    }()
    
    var endRegistrationButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.endOfRegistrationButton, for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .highlighted)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor.systemGreen
        return button
    }()
    
    lazy var imageAddView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(spaceForImage)
        view.addSubview(addImgBtn)
        view.addSubview(endRegistrationButton)
        return view
    }()
    
    lazy var stackForAll: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [imageAddView])
        stackView.axis = .vertical
        stackView.distribution = .fill
        return stackView
    }()
    
    lazy var scroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = false
        scroll.alwaysBounceVertical = true
        scroll.addSubview(stackForAll)
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
            make.centerX.centerY.equalToSuperview()
            make.top.bottom.left.right.equalToSuperview().inset(0)
        }
        
        stackForAll.snp.makeConstraints { make in
            make.bottom.left.right.equalTo(scroll)
            make.top.equalTo(scroll).inset(0)
            make.width.equalTo(scroll)
        }
        
        imageAddView.snp.makeConstraints { make in
            make.height.width.equalTo(550)
        }
        
        addImgBtn.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(imageAddView).inset(20)
            make.height.equalTo(40)
            make.width.equalTo(180)
        }
        
        spaceForImage.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(addImgBtn.snp_bottomMargin).inset(-50)
            make.width.height.equalTo(250)
        }
        
        addImgBtn.addTarget(self, action: #selector(onAddPhotoTap), for: .touchUpInside)
        endRegistrationButton.addTarget(self, action: #selector(onEndTap), for: .touchUpInside)
    }
    
    @objc func onAddPhotoTap() {
        let allPhotoesVC = AllPhotoesViewController()
        navigationController?.pushViewController(allPhotoesVC, animated: true)
    }
    
    @objc func onEndTap() {
        let firstScreen = FirstScreenViewController()
        firstScreen.meLabel.text = "Вы зарегестрированы"
        firstScreen.meLabel.textColor = UIColor.systemGreen
        navigationController?.popToRootViewController(animated: true)
    }
}

