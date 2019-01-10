//
//  PagingMenuTransition.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

public enum PagingMenuTransition {
    
    // Update scroll offset based on how much the content has
    // scrolled. Makes the menu items transition smoothly as you scroll.
    case scrollAlongside
    
    // Animate the menu item position after a transition has completed
    case animateAfter
}
