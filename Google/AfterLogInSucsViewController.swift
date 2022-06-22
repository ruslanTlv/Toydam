//
//  AfterLogInSucsViewController.swift
//  Google
//
//  Created by Ruslan on 04/06/22.
//

import UIKit

class AfterLogInSucsViewController: UIViewController {

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
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backgroundImage)
        view.addSubview(logo)
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

}

}
