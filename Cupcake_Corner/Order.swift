//
//  Order.swift
//  Cupcake_Corner
//
//  Created by Dev on 02/03/2023.
//

import Foundation

class Order: ObservableObject {
    static let types = ["Vanila", "Strawberry", "Chocolate","Rainbow"]
    
    @Published var type = 0
    
    @Published var quantity = 3
    
    @Published var specialRequestedEnabled = false
    {
        didSet {
            if specialRequestedEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
}
