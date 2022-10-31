//
//  TabBarViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 31/10/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearence = UITabBarAppearance()
        tabBarAppearence.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearence
        tabBar.scrollEdgeAppearance = tabBarAppearence
       
    }
    


}
