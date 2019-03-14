//
//  HomeCoordinator.swift
//  Countdown
//
//  Created by Ben Gohlke on 2/11/19.
//  Copyright © 2019 Ben Gohlke. All rights reserved.
//

import Foundation
import UIKit

final class HomeCoordinator: BaseCoordinator
{
    let presenter: UIWindow
    var navC: UINavigationController?
    
    init(presenter: UIWindow)
    {
        self.presenter = presenter
    }
    
    override func start()
    {
        let timersTableViewController = TimersTableViewController.build()
        let navController = UINavigationController(rootViewController: timersTableViewController)
        navC = navController
        presenter.rootViewController = navController
        presenter.makeKeyAndVisible()
    }
}
