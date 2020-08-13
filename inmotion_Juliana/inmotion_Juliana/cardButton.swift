//
//  cardButton.swift
//  inmotion_Juliana
//
//  Created by Juliana Pereira Machado on 04/08/20.
//  Copyright © 2020 Juliana Pereira Machado. All rights reserved.
//

import UIKit

class cardButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton(){
        setTitleColor(.green, for: .normal)
        backgroundColor = .black
        titleLabel?.font = UIFont.systemFont(ofSize: 25)
        layer.cornerRadius = 10
    }
}

