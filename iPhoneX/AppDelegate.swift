//
//  AppDelegate.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/26/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        return window
    }()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

//        let viewController = ViewController()
//        let navigationController = UINavigationController(rootViewController: viewController)
//        window?.rootViewController = navigationController

        let viewController = OnboardingViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()

        return true
    }

}

