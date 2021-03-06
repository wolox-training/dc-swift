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
        
        let libraryController = LibraryController(viewModel: LibraryViewModel(repository: BookRepository(
            networkingConfiguration: RepositoryBuilder.DefaultNetworkingConfiguration,
            sessionManager: SessionManagerService.shared)))
        
        let navLibraryController = UINavigationController(rootViewController: libraryController)
        libraryController.tabBarItem = UITabBarItem(
            title: "TABBAR-LIBRARY".localized(),
            image: UIImage(named: "library"),
            selectedImage: UIImage(named: "library"))
        
        let wishListController = WishListController(viewModel: WishListViewModel())
        let navWishListController = UINavigationController(rootViewController: wishListController)
        wishListController.tabBarItem = UITabBarItem(
            title: "TABBAR-WISHLIST".localized(),
            image: UIImage(named: "wishlist"),
            selectedImage: UIImage(named: "wishlist"))
        
        let newBookController = NewBookController(viewModel: NewBookViewModel(repository: BookRepository(
            networkingConfiguration: RepositoryBuilder.DefaultNetworkingConfiguration,
            sessionManager: SessionManagerService.shared)))
        let navNewBook = UINavigationController(rootViewController: newBookController)
        newBookController.tabBarItem = UITabBarItem(
            title: "TABBAR-ADDNEW".localized(),
            image: UIImage(named: "newBook"),
            selectedImage: UIImage(named: "newBook"))
        
        
        let rentalsController = RentalsController(viewModel: RentalsViewModel(repository: RentalRepository()))
        let navRentals = UINavigationController(rootViewController: rentalsController)
        rentalsController.tabBarItem = UITabBarItem(
            title: "TABBAR-RENTALS".localized(),
            image: UIImage(named: "rentals"),
            selectedImage: UIImage(named: "rentals"))
        
        viewControllers = [navLibraryController, navWishListController, navNewBook, navRentals]
    }
}
