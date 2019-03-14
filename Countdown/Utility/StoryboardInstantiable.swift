//
//  StoryboardInstantiable.swift
//  Countdown
//
//  Created by Ben Gohlke on 2/11/19.
//  Copyright © 2019 Ben Gohlke. All rights reserved.
//

import Foundation
import UIKit

protocol StoryboardInstantiable: class
{
    static var storyboardName: String { get }
}

extension StoryboardInstantiable
{
    static func instantiatingStoryboard() -> UIStoryboard
    {
        return UIStoryboard(name: storyboardName, bundle: nil)
    }
    
    static func instantiateInitial() -> Self
    {
        return instantiatingStoryboard().instantiateInitialViewController() as! Self
    }
    
    static func instantiate(with identifier: String) -> Self
    {
        return instantiatingStoryboard().instantiateViewController(withIdentifier: identifier) as! Self
    }
}
