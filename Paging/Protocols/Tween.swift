//
//  Tween.swift
//  Paging
//
//  Created by TriNgo on 1/10/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import Foundation

func tween(from: CGFloat, to: CGFloat, progress: CGFloat) -> CGFloat {
    return ((to - from) * progress) + from
}
