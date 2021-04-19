//
//  LoginVC.swift
//  Twitter
//
//  Created by diayan siat on 09/02/2021.
//

import UIKit

class LoginVC: UIViewController {
    let logoImageView     = UIImageView()
    let loginLabel        = TTitleLabel(textAlignment: .center, fontSize: 24)
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let usernameDivider   = UIView()
    let passwordDivier    = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        setNavigationItem()
        configureElements()
        layoutUI()
    }
    
    func configureElements() {
        loginLabel.text                     = "Log in to Twitter"
        
        usernameTextField.placeholder       = "Phone number or email address"
        usernameTextField.borderStyle       = .none
        
        usernameDivider.backgroundColor     = .systemGray
        
        passwordTextField.placeholder       = "Password"
        
        passwordDivier.backgroundColor      = .systemGray
        
    }
    
    func layoutUI() {
        view.addSubview(logoImageView)
        view.addSubview(loginLabel)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(usernameDivider)
        view.addSubview(passwordDivier)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints     = false
        loginLabel.translatesAutoresizingMaskIntoConstraints        = false
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameDivider.translatesAutoresizingMaskIntoConstraints   = false
        passwordDivier.translatesAutoresizingMaskIntoConstraints    = false
        
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 36),
            logoImageView.widthAnchor.constraint(equalToConstant: 36),
        
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 20),
            
            usernameDivider.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 8),
            usernameDivider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameDivider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameDivider.heightAnchor.constraint(equalToConstant: 0.78),
            
            passwordTextField.topAnchor.constraint(equalTo: usernameDivider.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            passwordDivier.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
            passwordDivier.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordDivier.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordDivier.heightAnchor.constraint(equalToConstant: 0.78),

        ])
    }
    
    func configureViewController() {
        view.backgroundColor              = .systemBackground
        let cancelButton                  = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissVC))
        let aboutButton                   = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .done, target: self, action: #selector(pushToAbout))
        navigationItem.leftBarButtonItem  = cancelButton
        navigationItem.rightBarButtonItem = aboutButton
    }
    
    @objc func dismissVC()  {
        dismiss(animated: true)
    }
    
    func setNavigationItem() {
        logoImageView.image                  = UIImage(named: "twitter")
        self.navigationItem.titleView        = logoImageView
        
        navigationController?.navigationBar.barTintColor = .systemBackground
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for:  UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage  = UIImage()
    }
    
    @objc func pushToAbout() {
        let aboutVC                          = AboutVC()
        let navController                    = UINavigationController(rootViewController: aboutVC)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }
    
    
}
