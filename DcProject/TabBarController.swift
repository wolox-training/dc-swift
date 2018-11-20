import Foundation
import UIKit

final class TabBarController: UITabBarController, UITabBarControllerDelegate, UINavigationControllerDelegate {
    
    init() {
        super.init(nibName:nil,bundle:nil)
        delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBarControllers()
        
    }
    
    func setUpTabBarControllers() {
        let libraryController = LibraryController(viewModel: LibraryViewModel())
        let navLibraryController = UINavigationController(rootViewController: libraryController)
        libraryController.tabBarItem = UITabBarItem(
            title: "TABBAR-LIBRARY".localized(),
            image: UIImage(named: "ICON-LIBRARY".localized()),
            selectedImage: UIImage(named: "ICON-LIBRARY".localized()))
        
        let wishListController = WishListController(viewModel: WishListViewModel())
        let navWishListController = UINavigationController(rootViewController: wishListController)
        wishListController.tabBarItem = UITabBarItem(
            title: "TABBAR-WISHLIST".localized(),
            image: UIImage(named: "ICON-WISHLIST".localized()),
            selectedImage: UIImage(named: "ICON-WISHLIST".localized()))
        
        viewControllers = [navLibraryController, navWishListController]
    }
}
