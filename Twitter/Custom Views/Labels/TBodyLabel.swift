//
//  TBodyLabel.swift
//  Twitter
//
//  Created by diayan siat on 21/04/2021.
//

import UIKit

class TBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
    }
    
    func configure() {
        textColor                         = .secondaryLabel
        font                              = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontForContentSizeCategory = true
        adjustsFontSizeToFitWidth         = true
        minimumScaleFactor                = 0.75
        lineBreakMode                     = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
