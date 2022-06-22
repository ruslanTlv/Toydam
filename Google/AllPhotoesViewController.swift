//
//  AllPhotoesViewController.swift
//  Google
//
//  Created by Ruslan on 05/06/22.
//

import UIKit

class AllPhotoesViewController: UIViewController {

    var firstImageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "mainPic1"), for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 55
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    var secondImageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "mainPic2"), for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 55
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    var thirdImageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "mainPic3"), for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 55
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    var fourthImageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "mainPic5"), for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 55
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    var fifthImageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "mainPic7"), for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 55
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    var sixthImageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "mainPic4"), for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 55
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    lazy var imagesView1: UIView = {
        let view = UIView()
        view.addSubview(firstImageButton)
        view.addSubview(secondImageButton)
        view.addSubview(thirdImageButton)
        return view
    }()
    
    lazy var imagesView2: UIView = {
        let view = UIView()
        view.addSubview(fourthImageButton)
        view.addSubview(fifthImageButton)
        view.addSubview(sixthImageButton)
        return view
    }()
    
    lazy var imgStackView1: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [imagesView1, imagesView2])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    lazy var scroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
        scroll.showsVerticalScrollIndicator = false
        scroll.addSubview(imgStackView1)
        return scroll
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scroll)
        allEdits()
    }
    
    func allEdits() {
        scroll.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.top.bottom.left.right.equalToSuperview().inset(0)
        }
        
        imgStackView1.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(scroll).inset(0)
            make.width.equalTo(scroll)
        }
        
        imagesView1.snp.makeConstraints { make in
            make.height.equalTo(150)
        }
        
        firstImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(imagesView1)
            make.left.equalTo(imagesView1).inset(20)
            make.width.height.equalTo(110)
        }
        
        secondImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(imagesView1)
            make.left.equalTo(firstImageButton.snp_rightMargin).inset(-15)
            make.width.height.equalTo(110)
        }
        
        thirdImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(imagesView1)
            make.left.equalTo(secondImageButton.snp_rightMargin).inset(-15)
            make.width.height.equalTo(110)
        }
        
        imagesView2.snp.makeConstraints { make in
            make.height.equalTo(150)
        }
        
        fourthImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(imagesView2)
            make.left.equalTo(imagesView2).inset(20)
            make.width.height.equalTo(110)
        }
        
        fifthImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(imagesView2)
            make.left.equalTo(fourthImageButton.snp_rightMargin).inset(-15)
            make.width.height.equalTo(110)
        }
        
        sixthImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(imagesView2)
            make.left.equalTo(fifthImageButton.snp_rightMargin).inset(-15)
            make.width.height.equalTo(110)
        }
        
        firstImageButton.addTarget(self, action: #selector(onFirstImgBtnTap), for: .touchUpInside)
        secondImageButton.addTarget(self, action: #selector(onSecondImgBtnTap), for: .touchUpInside)
        thirdImageButton.addTarget(self, action: #selector(onThirdImgBtnTap), for: .touchUpInside)
        fourthImageButton.addTarget(self, action: #selector(onFourthImgBtnTap), for: .touchUpInside)
        fifthImageButton.addTarget(self, action: #selector(onFifthImgBtnTap), for: .touchUpInside)
        sixthImageButton.addTarget(self, action: #selector(onSixthImgBtnTap), for: .touchUpInside)
    }
    
    @objc func onFirstImgBtnTap() {
        let ImageAddVC = ImageAddViewController()
        ImageAddVC.spaceForImage.image = UIImage(named: "mainPic1")
        navigationController?.pushViewController(ImageAddVC, animated: true)
        let imageAddView = ImageAddVC.imageAddView
        let spaceForImage = ImageAddVC.spaceForImage
        ImageAddVC.endRegistrationButton.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(spaceForImage.snp_bottomMargin).inset(-90)
            make.width.equalTo(170)
            make.height.equalTo(50)
        }
    }
    
    @objc func onSecondImgBtnTap() {
        let ImageAddVC = ImageAddViewController()
        ImageAddVC.spaceForImage.image = UIImage(named: "mainPic2")
        navigationController?.pushViewController(ImageAddVC, animated: true)
        let imageAddView = ImageAddVC.imageAddView
        let spaceForImage = ImageAddVC.spaceForImage
        ImageAddVC.endRegistrationButton.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(spaceForImage.snp_bottomMargin).inset(-90)
            make.width.equalTo(170)
            make.height.equalTo(50)
        }
    }
    
    @objc func onThirdImgBtnTap() {
        let ImageAddVC = ImageAddViewController()
        ImageAddVC.spaceForImage.image = UIImage(named: "mainPic3")
        navigationController?.pushViewController(ImageAddVC, animated: true)
        let imageAddView = ImageAddVC.imageAddView
        let spaceForImage = ImageAddVC.spaceForImage
        ImageAddVC.endRegistrationButton.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(spaceForImage.snp_bottomMargin).inset(-90)
            make.width.equalTo(170)
            make.height.equalTo(50)
        }
    }
    
    @objc func onFourthImgBtnTap() {
        let ImageAddVC = ImageAddViewController()
        ImageAddVC.spaceForImage.image = UIImage(named: "mainPic5")
        navigationController?.pushViewController(ImageAddVC, animated: true)
        let imageAddView = ImageAddVC.imageAddView
        let spaceForImage = ImageAddVC.spaceForImage
        ImageAddVC.endRegistrationButton.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(spaceForImage.snp_bottomMargin).inset(-90)
            make.width.equalTo(170)
            make.height.equalTo(50)
        }
    }
    
    @objc func onFifthImgBtnTap() {
        let ImageAddVC = ImageAddViewController()
        ImageAddVC.spaceForImage.image = UIImage(named: "mainPic7")
        navigationController?.pushViewController(ImageAddVC, animated: true)
        let imageAddView = ImageAddVC.imageAddView
        let spaceForImage = ImageAddVC.spaceForImage
        ImageAddVC.endRegistrationButton.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(spaceForImage.snp_bottomMargin).inset(-90)
            make.width.equalTo(170)
            make.height.equalTo(50)
        }
    }
    
    @objc func onSixthImgBtnTap() {
        let ImageAddVC = ImageAddViewController()
        ImageAddVC.spaceForImage.image = UIImage(named: "mainPic4")
        navigationController?.pushViewController(ImageAddVC, animated: true)
        let imageAddView = ImageAddVC.imageAddView
        let spaceForImage = ImageAddVC.spaceForImage
        ImageAddVC.endRegistrationButton.snp.makeConstraints { make in
            make.centerX.equalTo(imageAddView)
            make.top.equalTo(spaceForImage.snp_bottomMargin).inset(-90)
            make.width.equalTo(170)
            make.height.equalTo(50)
        }
    }
    
}
