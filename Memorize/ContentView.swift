//
//  ContentView.swift
//  Memorize
//
//  Created by Camelia Samuila on 16.02.2025.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🫧","🌸","🧸","🤍","✨","🪐","🕯️","🦢","🍪","🥥","🍯","🩷"]
    
    var body: some View {
            ScrollView {
                cards

                .padding()
        }
    }
        
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))], content: {
            ForEach(emojis.indices, id: \.self) { index in
                        CardView(content:emojis[index])
                                .aspectRatio(2/3, contentMode: .fit)
                                }
        })
        .foregroundColor(Color(red: 252/255, green: 142/255, blue: 172/255))
    }
    
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
            
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}







#Preview {
    ContentView()
}
