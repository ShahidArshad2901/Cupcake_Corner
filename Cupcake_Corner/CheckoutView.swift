//
//  CheckoutView.swift
//  Cupcake_Corner
//
//  Created by Dev on 02/03/2023.
//

import SwiftUI

struct CheckoutView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Text("HEyy")
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
