//
//  NotificationVC.swift
//  Twitter
//
//  Created by diayan siat on 08/02/2021.
//

import UIKit

class NotificationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
