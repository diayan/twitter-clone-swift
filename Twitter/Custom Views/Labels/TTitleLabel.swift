//
//  TTitleLabel.swift
//  Twitter
//
//  Created by diayan siat on 09/02/2021.
//

import UIKit

class TTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font          = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    func configure() {
        textColor                 = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor        = 0.9
        numberOfLines             = 3
        lineBreakMode             = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
