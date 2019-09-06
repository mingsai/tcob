//
//  ViewRouter.swift
//  tcob
//
//  Created by Tommie Carter on 9/6/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI
import Combine

class ViewRouter:ObservableObject {
    @Published var currentPage: Int = 0
}
