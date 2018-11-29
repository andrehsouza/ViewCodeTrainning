//
//  HeaderView.swift
//  ViewCodeTrainning
//
//  Created by andre.luiz.de.souza on 28/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

final class HeaderView: UIView {

    lazy var profilePicture: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    lazy var buttonsStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 10
        return view
    }()
    
    lazy var leftButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .magenta
        return view
    }()
    
    lazy var rightButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .cyan
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension HeaderView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(profilePicture)
        addSubview(title)
        addSubview(subTitle)
        buttonsStackView.addArrangedSubview(leftButton)
        buttonsStackView.addArrangedSubview(rightButton)
        addSubview(buttonsStackView)
    }
    
    func setupConstraints() {
        
        profilePicture.snp.makeConstraints { make in
            make.height.equalTo(100)
            make.width.equalTo(100)
            make.left.top.equalToSuperview()
        }
        
        title.snp.makeConstraints { make in
            make.left.equalTo(profilePicture.snp.right).offset(8)
            make.top.right.equalToSuperview()
            make.height.equalTo(20)
        }

        subTitle.snp.makeConstraints { make in
            make.left.equalTo(profilePicture.snp.right).offset(8)
            make.top.equalTo(title.snp.bottom).offset(8)
            make.right.equalToSuperview()
            make.height.equalTo(title.snp.height)
        }

        buttonsStackView.snp.makeConstraints { make in
            make.top.equalTo(subTitle.snp.bottom).offset(8)
            make.left.equalTo(profilePicture.snp.right).offset(8)
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        
    }
    
}
