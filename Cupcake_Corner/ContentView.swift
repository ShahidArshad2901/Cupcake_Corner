//
//  ContentView.swift
//  Cupcake_Corner
//
//  Created by Dev on 01/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            ScrollView {
                // Method 001
                AsyncImage(url: URL(string: "https://hws.dev/img/logo.png"), scale: 3)
                
                
                // Method 002
                AsyncImage(url: URL(string: "https://hws.dev/img/logo.png"))
                { image in
                        image
                            .resizable()
                            .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                

                // Method 003
                AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                        
                    } else if phase.error != nil {
                        Text("There's some error loading the image")
                    } else {
                        ProgressView()
                    }
                }
            }
        }
    }

}

//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
