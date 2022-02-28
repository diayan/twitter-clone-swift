//
//  AboutVC.swift
//  Twitter
//
//  Created by diayan siat on 19/04/2021.
//

import UIKit

class AboutVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVC()
    }
    
    func configureVC() {
        view.backgroundColor              = .systemBackground
        navigationItem.title              = "About Twitter"
        let clossButton                   = UIBarButtonItem(image: UIImage(systemName: "multiply"), style: .plain, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = clossButton
    }
    
    func layoutUI() {
        NSLayoutConstraint.activate([
        ])
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    
}
