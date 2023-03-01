//
//  ContentView.swift
//  Cupcake_Corner
//
//  Created by Dev on 01/03/2023.
//

import SwiftUI

class User: ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case name
    }
    @Published var name = "Shahid Arshad"
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("I got supplies")
        }
        .padding()
    }
}

//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
