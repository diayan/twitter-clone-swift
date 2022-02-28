//
//  CustomizeExperienceVC.swift
//  Twitter
//
//  Created by diayan siat on 20/04/2021.
//

import UIKit

class CustomizeExperienceVC: UIViewController {
    let logoImageView              = UIImageView()
    let customizeLabel             = TTitleLabel(textAlignment: .center, fontSize: 24)
    let togglePromptTextLabel      = TTitleLabel(textAlignment: .left, fontSize: 16)
    let customizeSubLabel          = TTitleLabel(textAlignment: .center, fontSize: 16)
    let toggleButton               = UISwitch()
    let moreDetailsLabel           = TBodyLabel(textAlignment: .natural)
    let helpCenterButton           = TButton(backgroundColor: .systemBackground, title: "Help Center.", cornerRadius: 0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        layoutUI()
        setNavigationItem()
        configureUIElements()
    }
    
    func configureViewController() {
        view.backgroundColor            = .systemBackground
    }
    
    func configureUIElements() {
        customizeLabel.text             = "Customize your experience"
        customizeSubLabel.text          = "Track where you see Twitter content \naccross the web"
        togglePromptTextLabel.text      = "Twitter uses this data to personalize \nyour experience. This web browsing \nhistory will never be stored with your \nname, email or phone number"
        togglePromptTextLabel.font      = UIFont.systemFont(ofSize: 16, weight: .medium)
        toggleButton.isOn               = true
        customizeSubLabel.textAlignment = .natural
        moreDetailsLabel.text           = "For more details about these settings, visit the"
        helpCenterButton.setTitleColor(.systemBlue, for: .normal)
        
    }
    
    func layoutUI() {
        view.addSubview(logoImageView)
        view.addSubview(customizeLabel)
        view.addSubview(customizeSubLabel)
        view.addSubview(togglePromptTextLabel)
        view.addSubview(toggleButton)
        view.addSubview(moreDetailsLabel)
        view.addSubview(helpCenterButton)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints              = false
        customizeLabel.translatesAutoresizingMaskIntoConstraints             = false
        customizeSubLabel.translatesAutoresizingMaskIntoConstraints          = false
        togglePromptTextLabel.translatesAutoresizingMaskIntoConstraints      = false
        toggleButton.translatesAutoresizingMaskIntoConstraints               = false
        moreDetailsLabel.translatesAutoresizingMaskIntoConstraints           = false
        helpCenterButton.translatesAutoresizingMaskIntoConstraints           = false
        
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 36),
            logoImageView.widthAnchor.constraint(equalToConstant: 36),
            
            customizeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            customizeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            customizeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            customizeSubLabel.topAnchor.constraint(equalTo: customizeLabel.bottomAnchor, constant: 30),
            customizeSubLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            customizeSubLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            togglePromptTextLabel.topAnchor.constraint(equalTo: customizeSubLabel.bottomAnchor, constant: 20),
            togglePromptTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            toggleButton.centerYAnchor.constraint(equalTo: togglePromptTextLabel.centerYAnchor),
            toggleButton.leadingAnchor.constraint(equalTo: togglePromptTextLabel.trailingAnchor, constant: 8),
            toggleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            moreDetailsLabel.topAnchor.constraint(equalTo: togglePromptTextLabel.bottomAnchor, constant: 20),
            moreDetailsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            moreDetailsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            helpCenterButton.topAnchor.constraint(equalTo: moreDetailsLabel.bottomAnchor, constant: 0),
            helpCenterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
    }
    
    func setNavigationItem() {
        logoImageView.image                              = UIImage(named: "twitter")
        self.navigationItem.titleView                    = logoImageView
        
        navigationController?.navigationBar.barTintColor = .systemBackground
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for:  UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage  = UIImage()
    }
}
