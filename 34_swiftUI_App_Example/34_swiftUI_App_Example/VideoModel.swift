//
//  VideoModel.swift
//  34_swiftUI_App_Example
//
//  Created by fedir on 21.03.2020.
//  Copyright © 2020 fedir. All rights reserved.
//

import Combine

final class  VideoMode: ObservableObject {
    
    @Published var title: String = "Apples"
    @Published var description: String = "Eating big apples"
    
}
