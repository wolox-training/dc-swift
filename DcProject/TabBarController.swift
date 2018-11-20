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
        navigationView()
        
    }
    
    func navigationView() {
        let libraryController = LibraryController(viewModel: LibraryViewModel())
        let navLibraryController = UINavigationController(rootViewController: libraryController)
        libraryController.tabBarItem = UITabBarItem(title: "Library", image: UIImage(named: "library"), selectedImage: UIImage(named: "library"))
        
        let wishListController = WishListController(viewModel: WishListViewModel())
        let navWishListController = UINavigationController(rootViewController: wishListController)
        wishListController.tabBarItem = UITabBarItem(title: "WishList", image: UIImage(named: "wishlist"), selectedImage: UIImage(named: "wishlist"))
        
        viewControllers = [navLibraryController, navWishListController]
    }
}
