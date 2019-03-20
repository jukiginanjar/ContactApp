//
//  AppDelegate.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import UIKit
import Swinject

extension Container {
    static let shared = Container()
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let container = Container.shared
    
    private func registerListPage() {
        container.register(ListRouter.self) { (resolver) -> ListRouter in
            return ListRouter()
        }
        container.register(ListInteractor.self) { (resolver) -> ListInteractor in
            return ListInteractor()
        }
        container.register(ListPresenter.self) { (resolver) -> ListPresenter in
            let router = resolver.resolve(ListRouter.self)!
            let interactor = resolver.resolve(ListInteractor.self)!
            return ListPresenter(router: router, interactor: interactor)
        }
        container.register(ListViewController.self) { (resolver) -> ListViewController in
            let presenter = resolver.resolve(ListPresenter.self)!
            let view = ListViewController(presenter: presenter)
            presenter.view = view
            return view
        }
    }
    
    private func registerAddPage() {
        container.register(AddRouter.self) { (resolver) -> AddRouter in
            return AddRouter()
        }
        container.register(AddInteractor.self) { (resolver) -> AddInteractor in
            return AddInteractor()
        }
        container.register(AddPresenter.self) { (resolver) -> AddPresenter in
            let router = resolver.resolve(AddRouter.self)!
            let interactor = resolver.resolve(AddInteractor.self)!
            return AddPresenter(router: router, interactor: interactor)
        }
        container.register(AddViewController.self) { (resolver) -> AddViewController in
            let presenter = resolver.resolve(AddPresenter.self)!
            let view = AddViewController(presenter: presenter)
            presenter.view = view
            return view
        }
    }
    
    private func registerDetailPage() {
        container.register(DetailPresenter.self) { (resolver, contact: Contact) -> DetailPresenter in
            return DetailPresenter(contact: contact)
        }
        
        container.register(DetailViewController.self) { (resolver, contact: Contact) -> DetailViewController in
            let presenter = resolver.resolve(DetailPresenter.self, argument: contact)!
            let view = DetailViewController(presenter: presenter)
            return view
        }
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        registerListPage()
//        registerAddPage()
//        registerDetailPage()
//
//        if let view = container.resolve(ListViewController.self) {
//            self.window?.rootViewController = UINavigationController(rootViewController: view)
//        }
        
        self.window?.rootViewController =  ListBuilder().main()
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

