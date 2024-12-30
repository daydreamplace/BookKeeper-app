//
//  MainTabBarController.swift
//  BookKeeper
//
//  Created by Eden on 12/27/24.
//

import UIKit

class MainTabBarController: UITabBarController {
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabBar()
    }

    // MARK: - Setup
    private func setupTabBar() {
        let searchViewController = SearchViewController()
        searchViewController.tabBarItem = UITabBarItem(
            title: "검색",
            image: UIImage(systemName: "magnifyingglass"),
            selectedImage: UIImage(systemName: "magnifyingglass.circle.fill")
        )
        
        let savedViewController = SavedViewController()
        savedViewController.tabBarItem = UITabBarItem(
            title: "책장",
            image: UIImage(systemName: "bookmark"),
            selectedImage: UIImage(systemName: "bookmark.fill")
        )
        
        viewControllers = [
            UINavigationController(rootViewController: searchViewController),
            UINavigationController(rootViewController: savedViewController)
        ]
        
        tabBar.tintColor = .systemBlue
        tabBar.barTintColor = .white
    }
}
