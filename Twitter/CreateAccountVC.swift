//
//  CreateAccountVC.swift
//  Twitter
//
//  Created by diayan siat on 09/02/2021.
//

import UIKit
import TwitterTextEditor

class CreateAccountVC: UIViewController {
    let logoImageView          = UIImageView()
    let createAccountLable     = TTitleLabel(textAlignment: .left, fontSize: 24)
    let nameTextField          = UITextField()
    let nameTextView           = TextEditorView()
    let userNameTextField      = UITextField()
    let datePicker             = UIDatePicker()
    let dobTextView            = UITextField()
    let toolbar                = UIToolbar()
    let separatorView          = UIView()
    var doneButton             = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor                = .systemBackground
    
        nameTextView.textAttributesDelegate = self
        layoutUI()
        setNavigationItem()
        configureUIElements()
        configureDatePicker()
    }
    
    func configureUIElements() {
        createAccountLable.text             = "Create your account"
        createAccountLable.textAlignment    = .center
        
        nameTextField.borderStyle           = .none
        nameTextField.placeholder           = "Name"
        
        userNameTextField.placeholder       = "Phone number or email address"
        userNameTextField.borderStyle       = .none
        
        dobTextView.placeholder             = "Date of birth"
        dobTextView.borderStyle             = .none
        
        separatorView.backgroundColor       = .systemGray

    }
    
    func configureDatePicker() {
        toolbar.sizeToFit()
        doneButton                          = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        dobTextView.inputAccessoryView      = toolbar
        datePicker.datePickerMode           = .date
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = UIDatePickerStyle.wheels
        } else {
            // Fallback on earlier versions
        }
        dobTextView.inputView               = datePicker
    }
    
    @objc func donePressed() {
        
    }
    
    func layoutUI() {
        view.addSubview(logoImageView)
        view.addSubview(createAccountLable)
        view.addSubview(nameTextView)
        view.addSubview(nameTextField)
        view.addSubview(userNameTextField)
        view.addSubview(dobTextView)
        view.addSubview(separatorView)
                
        logoImageView.translatesAutoresizingMaskIntoConstraints       = false
        createAccountLable.translatesAutoresizingMaskIntoConstraints  = false
        nameTextView.translatesAutoresizingMaskIntoConstraints        = false
        nameTextField.translatesAutoresizingMaskIntoConstraints       = false
        userNameTextField.translatesAutoresizingMaskIntoConstraints   = false
        dobTextView.translatesAutoresizingMaskIntoConstraints         = false
        separatorView.translatesAutoresizingMaskIntoConstraints       = false
        
        NSLayoutConstraint.activate([

            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 36),
            logoImageView.widthAnchor.constraint(equalToConstant: 36),
            
            createAccountLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            createAccountLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            createAccountLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            nameTextField.topAnchor.constraint(equalTo: createAccountLable.bottomAnchor, constant: 50),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userNameTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
        
            dobTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            dobTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            dobTextView.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20),
            
            separatorView.topAnchor.constraint(equalTo: dobTextView.bottomAnchor, constant: 8),
            separatorView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            separatorView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            separatorView.heightAnchor.constraint(equalToConstant: 0.78),
        
        ])
    }
    
    func setNavigationItem() {
        logoImageView.image           = UIImage(named: "twitter")
        self.navigationItem.titleView = logoImageView
        
        navigationController?.navigationBar.barTintColor = .systemBackground
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage  = UIImage()
    }
}

extension CreateAccountVC: TextEditorViewTextAttributesDelegate {
    func textEditorView(_ textEditorView: TextEditorView,
                        updateAttributedString attributedString: NSAttributedString,
                        completion: @escaping (NSAttributedString?) -> Void){
    }
}
