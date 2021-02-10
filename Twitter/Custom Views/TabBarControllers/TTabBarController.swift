//
//  TTabBarController.swift
//  Twitter
//
//  Created by diayan siat on 08/02/2021.
//

import UIKit

class TTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .systemBlue
        viewControllers = [createHomeNavController(), createTrendNavController(), createNotificationNavController(), createMessageNavController()]
    }
    
    func createHomeNavController() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 0)
        
        return UINavigationController(rootViewController: homeVC)
    }
    
    func createTrendNavController() -> UINavigationController {
        let trendVC = TrendVC()
        trendVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "magnifyingglass"), tag: 0)
        
        return UINavigationController(rootViewController: trendVC)
    }
    
    func createNotificationNavController() -> UINavigationController {
        let notificationVC = NotificationVC()
        notificationVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "bell"), tag: 0)
        
        return UINavigationController(rootViewController: notificationVC)
    }
    
    func createMessageNavController() -> UINavigationController {
        let messageVC = MessageVC()
        messageVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "envelope"), tag: 0)
        return UINavigationController(rootViewController: messageVC)
    }
}
