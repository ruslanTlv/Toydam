//
//  FirstScreenViewController.swift
//  Google
//
//  Created by Ruslan on 20/05/22.
//

import UIKit
import SnapKit

class FirstScreenViewController: UIViewController {
    
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
    
    var meLabel: UILabel = {
        let label = UILabel()
        label.text = Text.me
        label.font = UIFont.systemFont(ofSize: 30, weight: .light)
        return label
    }()
    
    var driverButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.driverButton, for: .normal)
        button.setTitleColor(UIColor.systemBackground, for: .normal)
        button.setTitleColor(UIColor.blue, for: .highlighted)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor.systemGreen
        return button
    }()
    
    var passangerButton: UIButton = {
        let button = UIButton()
        button.setTitle(Text.passangerButton, for: .normal)
        button.setTitleColor(UIColor.systemBackground, for: .normal)
        button.setTitleColor(UIColor.blue, for: .highlighted)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor.systemGreen
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backgroundImage)
        view.addSubview(logo)
        view.addSubview(meLabel)
        view.addSubview(driverButton)
        view.addSubview(passangerButton)
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
        
        meLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logo.snp_bottomMargin).inset(-80)
        }
        
        driverButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(meLabel.snp_bottomMargin).inset(-30)
            make.width.equalTo(200)
            make.height.equalTo(45)
        }
        
        passangerButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(driverButton.snp_bottomMargin).inset(-30)
            make.width.equalTo(200)
            make.height.equalTo(45)
        }
        
        driverButton.addTarget(self, action: #selector(onDriverBtnTap), for: .touchUpInside)
        
    }
  
    @objc func onDriverBtnTap() {
        let logInVC = LogInViewController()
        navigationController?.pushViewController(logInVC, animated: true)
    }
    
}
    





