//
//  MainTabBarController.swift
//  instaCloneUsingMVVM
//
//  Created by walid bouwachma on 27/7/2023.
//

import UIKit

class MainTabBarController : UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewContorller()
    }
    
    // MARK: - HELPERS

    func configureViewContorller(){
        //view.backgroundColor = .blue
        let layout = UICollectionViewFlowLayout()
        let feed = templateNavigation(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected"), rootView: FeedViewController(collectionViewLayout: layout))
        
        let search = templateNavigation(unselectedImage: #imageLiteral(resourceName: "search_selected"), selectedImage: #imageLiteral(resourceName: "search_selected"), rootView: SearchViewController())
        
        let profile = templateNavigation(unselectedImage: #imageLiteral(resourceName: "profile_unselected"), selectedImage: #imageLiteral(resourceName: "profile_selected"), rootView: ProfileViewController())
    
        let notification = templateNavigation(unselectedImage: #imageLiteral(resourceName: "like_unselected"), selectedImage: #imageLiteral(resourceName: "like_selected"), rootView: NotificationViewController())
        
        let upload = templateNavigation(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage: #imageLiteral(resourceName: "plus_unselected"), rootView: UploadViewController())
        viewControllers = [feed,search,upload,notification,profile]
        
    }
    
    func templateNavigation(unselectedImage:UIImage ,selectedImage: UIImage, rootView: UIViewController) -> UINavigationController{
        
        let nav = UINavigationController(rootViewController: rootView)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        //nav.navigationBar.barTintColor = .brown
        return nav
    }
    
}
