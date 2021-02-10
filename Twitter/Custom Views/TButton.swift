//
//  TButton.swift
//  Twitter
//
//  Created by diayan siat on 09/02/2021.
//

import UIKit

class TButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: String) {
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
    }
    
    func configure() {
        layer.cornerRadius = 20
        titleLabel?.font   = UIFont.preferredFont(forTextStyle: .headline)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(backgroundColor: UIColor, title: String)  {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
}
