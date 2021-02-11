//
//  CreateAccountVC.swift
//  Twitter
//
//  Created by diayan siat on 09/02/2021.
//

import UIKit

class CreateAccountVC: UIViewController {

    let logoImageView          = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        layoutUI()
        setNavigationItem()
    }
    
    func layoutUI() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints       = false
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 36),
            logoImageView.widthAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    func setNavigationItem() {
        logoImageView.image           = UIImage(named: "twitter")
        self.navigationItem.titleView = logoImageView
        
        navigationController?.navigationBar.barTintColor = .systemBackground
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
}
