//
//  ContentView.swift
//  Memorize
//
//  Created by Camelia Samuila on 16.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(Color(red: 252/255, green: 142/255, blue: 172/255))
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                
                RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(.white)
                            RoundedRectangle(cornerRadius: 12)
                                .strokeBorder(lineWidth: 2)
                            Text("🐇").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)

                
            }
            
        })
    }
}







#Preview {
    ContentView()
}
