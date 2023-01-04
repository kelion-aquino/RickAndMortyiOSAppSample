//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by Kelion Aquino on 26/12/22.
//

import UIKit

final class RMTabViewController: UITabBarController {
    
    // MARK: - Initialization

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupTabs()
    }
    
    // MARK: - UI Setup
    
    private func setupTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        let navs = [nav1, nav2, nav3, nav4]
        
        for nav in navs {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            navs,
            animated: true
        )
    }
}
