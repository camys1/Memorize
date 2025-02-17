//
//  ContentView.swift
//  Memorize
//
//  Created by Camelia Samuila on 16.02.2025.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🫧","🌸","🧸","🤍","✨"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content:emojis[index])
            }
        }
        .foregroundColor(Color(red: 252/255, green: 142/255, blue: 172/255))
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}







#Preview {
    ContentView()
}
