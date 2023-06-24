//
//  ContentView.swift
//  Counter
//
//  Created by Asmaa Ashraf on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 0
    @State private var message = ""
    
    var body: some View {
        
        VStack {
          
            Text(" \(counter) cookies eaten")
            
            Button{
                counter += 1
                if counter >= 20 {
                    message = "Don't eat too many cookies"
                }
                if counter >= 30 {
                    message = "What are you doing ??? "
                }
                if counter >= 40 {
                    message = "Oh nooooooooo !!"
                }
            } label: {
                Text("OM NOM NOM")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            
            Text(message)
                .padding()
                .foregroundColor(.red)
            
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
