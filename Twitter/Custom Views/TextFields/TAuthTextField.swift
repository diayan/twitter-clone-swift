//
//  TAuthTextField.swift
//  Twitter
//
//  Created by diayan siat on 13/02/2021.
//

import UIKit

class TAuthTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(placeholderText: String, textAlignment: NSTextAlignment, font: CGFloat) {
        self.init(frame: .zero)
        self.placeholder = placeholderText
        self.textAlignment   = textAlignment
    }
    
    func configure() {
    }
}
