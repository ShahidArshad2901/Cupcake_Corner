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
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    var hasValidAddress: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
    
}
