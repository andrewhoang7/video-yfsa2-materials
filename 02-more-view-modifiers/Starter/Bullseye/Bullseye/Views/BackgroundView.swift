//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Andrew Hoang on 8/19/21.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var game: Game

    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(Color("BackgroundColor"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct TopView: View {
    
    @Binding var game: Game

    var body: some View {
        HStack{
            RoundedViewImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedViewImageViewFilled(systemName: "list.dash")
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: 5) {
            LabelText(text: title.uppercased())
            RoundRectTextView(text: text)
        }
    }
}

struct BottomView: View {
    
    @Binding var game: Game

    var body: some View {
        HStack{
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Score", text: String(game.score))
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
