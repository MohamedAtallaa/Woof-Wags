//
//  WWTabBarController.swift
//  Woof&Wags
//
//  Created by Mohamed Atallah on 23/03/2023.
//

import UIKit

class WWTabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [createHomeNC(), createTagsNC(), createFavoritesNC()]
        tabBar.tintColor = .systemTeal
    }
    
    
    func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.title = "Home"
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        
        return UINavigationController(rootViewController: homeVC)
    }
    
    
    func createTagsNC() -> UINavigationController {
        let tagsVC = TagsVC()
        tagsVC.title = "Tags"
        tagsVC.tabBarItem = UITabBarItem(title: "Tags", image: UIImage(systemName: "tag.fill"), tag: 1)
        
        return UINavigationController(rootViewController: tagsVC)
    }
    
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesVC = FavoritesVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
    

}
