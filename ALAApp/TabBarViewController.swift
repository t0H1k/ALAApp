//
//  TabBarViewController.swift
//  ALAApp
//
//  Created by leogoba on 30.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var content: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarSetting()
    }
    
    private func tabBarSetting() {
        let tabBarAppearance = UITabBarAppearance()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }

    
    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailsVC = segue.destination as? DetailsSubChapterViewController else { return }
//        detailsVC.content = content
//    }


}
