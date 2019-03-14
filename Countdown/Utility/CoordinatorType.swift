//
//  CoordinatorType.swift
//  Countdown
//
//  Created by Ben Gohlke on 2/11/19.
//  Copyright © 2019 Ben Gohlke. All rights reserved.
//

import Foundation

protocol CoordinatorType: class
{
    var childCoordinators: [CoordinatorType] { get set }
    var uuid: UUID { get }
    func start()
}

extension CoordinatorType
{
    func coordinate(to coordinator: CoordinatorType)
    {
        add(childCoordinator: coordinator)
        coordinator.start()
    }
    
    func add(childCoordinator: CoordinatorType)
    {
        childCoordinators.append(childCoordinator)
    }
    
    func remove(childCoordinator: CoordinatorType)
    {
        guard let index = childCoordinators.index(where: { otherCoordinator in
            return otherCoordinator.uuid == childCoordinator.uuid
        }) else
        {
            return
        }
        
        childCoordinators.remove(at: index)
    }
    
    func removeAllChildren()
    {
        childCoordinators.removeAll()
    }
}
