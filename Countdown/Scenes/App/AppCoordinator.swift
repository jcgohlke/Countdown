//
//  AppCoordinator.swift
//  Countdown
//
//  Created by Ben Gohlke on 2/11/19.
//  Copyright © 2019 Ben Gohlke. All rights reserved.
//

import Foundation
import UIKit

final class AppCoordinator: BaseCoordinator
{
    let presenter: UIWindow
    
    init(window: UIWindow)
    {
        self.presenter = window
    }
    
    override func start()
    {
        let homeCoordinator = HomeCoordinator(presenter: presenter)
        coordinate(to: homeCoordinator)
    }
}
