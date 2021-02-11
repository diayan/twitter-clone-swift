//
//  AuthenticationVC.swift
//  Twitter
//
//  Created by diayan siat on 09/02/2021.
//

import UIKit

class AuthenticationVC: UIViewController {

    let logoImageView          = UIImageView()
    let whatHappenLabel        = TTitleLabel(textAlignment: .left, fontSize: 34)
    let createAccountButton    = TButton(backgroundColor: .systemBlue, title: "Create account", cornerRadius: 28)
    let callToActionLabel      = TTitleLabel(textAlignment: .left, fontSize: 14)
    let loginButton            = TButton(backgroundColor: .systemBackground, title: "Log in", cornerRadius: 0)
    var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor   = .systemBackground
        layoutUI()
        configureStackView()
        configureUIElements()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func configureUIElements() {
        whatHappenLabel.text   = "See what's \nhappening in the \nworld right now."
        logoImageView.image    = UIImage(named: "twitter")
        callToActionLabel.text = "Have an account already?"
    }
    
    //TODO: Make callToAction button wrap its content
    func configureStackView() {
        view.addSubview(callToActionLabel)
        view.addSubview(loginButton)
        
        stackView              = UIStackView(arrangedSubviews: [callToActionLabel, loginButton])
        stackView.axis         = .horizontal
        stackView.spacing      = 10
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints           = false
        callToActionLabel.translatesAutoresizingMaskIntoConstraints   = false
        loginButton.translatesAutoresizingMaskIntoConstraints         = false
        
        callToActionLabel.sizeToFit()
        loginButton.setTitleColor(.systemBlue, for: .normal)
        
        loginButton.addTarget(self, action: #selector(pushToLogin), for: .touchUpInside)

        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            loginButton.widthAnchor.constraint(equalToConstant: 60),
            loginButton.heightAnchor.constraint(equalToConstant: 20.0)
        ])
    }
    
    func layoutUI() {
        view.addSubview(logoImageView)
        view.addSubview(whatHappenLabel)
        view.addSubview(createAccountButton)

        logoImageView.translatesAutoresizingMaskIntoConstraints       = false
        whatHappenLabel.translatesAutoresizingMaskIntoConstraints     = false
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        createAccountButton.addTarget(self, action: #selector(pushToCreateAccount), for: .touchUpInside)

        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 36),
            logoImageView.widthAnchor.constraint(equalToConstant: 36),
        
            whatHappenLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            whatHappenLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            whatHappenLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            createAccountButton.topAnchor.constraint(equalTo: whatHappenLabel.bottomAnchor, constant: 40),
            createAccountButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    @objc func pushToCreateAccount() {
        navigationController?.pushViewController(CreateAccountVC(), animated: true)
    }
    
    @objc func pushToLogin() {
        navigationController?.pushViewController(LoginVC(), animated: true)
    }
}
