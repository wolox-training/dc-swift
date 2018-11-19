import Foundation
import UIKit

final class MainController: UITabBarController, UITabBarControllerDelegate, UINavigationControllerDelegate {
    init() {
        super.init(nibName:nil,bundle:nil)
        delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBarApparence()
        viewControllers = [LibraryController(viewModel: LibraryViewModel()), WishListController(viewModel: WishListViewModel())]
    }
    
    func navBarApparence() {
        let searchButton = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: "press")
        let notificationButton = UIBarButtonItem(image: UIImage(named: "notification"), style: .plain, target: self, action: "press")
        
        navigationItem.rightBarButtonItem = searchButton
        navigationItem.leftBarButtonItem = notificationButton
        navigationItem.title = "LIBRARY"
        
    }
}
