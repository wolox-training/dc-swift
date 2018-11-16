//
//  AppDelegate.swift
//  DcProject
//
//  Created by Guido Marucci Blas on 4/3/16.
//  Copyright © 2016 Wolox. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let navController = UINavigationController(rootViewController: LibraryController(viewModel: LibraryViewModel()))
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        if Environment.isTestTarget {
            return true
        }
        
        /*
         * Uncomment this and remove this comment once Rollbar service is enabled
         * and the keys are properly configured in the configuration files.
         *
         RollbarService().initialize()
         *
         */
        
        
        let vc1 = UIViewController()
        vc1.view.backgroundColor = UIColor.orange
        vc1.tabBarItem.title = "Orange"
        vc1.tabBarItem.image = UIImage(named: "heart")
        
        // Set up the second View Controller
        let vc2 = UIViewController()
        vc2.view.backgroundColor = UIColor.purple
        vc2.tabBarItem.title = "Purple"
        vc2.tabBarItem.image = UIImage(named: "star")
        
        let vc3 = LibraryController(viewModel: LibraryViewModel())
        vc3.tabBarItem.title = "Red"
        vc1.tabBarItem.image = UIImage(named: "book")
        
        // Set up the Tab Bar Controller to have two tabs
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [vc1, vc2,vc3]
        
        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.rootViewController = tabBarController
//        window?.rootViewController = UINavigationController(rootViewController: TabBarController(viewModel: TabBarViewModel()))
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. 
        // This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) 
        // or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. 
        // Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers,
        // and store enough application state information to restore your application to its current state 
        // in case it is terminated later.
        // If your application supports background execution, this method is called instead of 
        // applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; 
        // here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. 
        // If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. 
        // See also applicationDidEnterBackground:.
    }
    
}
