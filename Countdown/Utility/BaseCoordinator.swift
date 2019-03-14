//
//  BaseCoordinator.swift
//  Countdown
//
//  Created by Ben Gohlke on 2/11/19.
//  Copyright © 2019 Ben Gohlke. All rights reserved.
//

import Foundation

class BaseCoordinator: CoordinatorType
{
    let uuid: UUID = UUID()
    var childCoordinators: [CoordinatorType] = []
    
    func start()
    {
        preconditionFailure("A subclass must override start()")
    }
}
