//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Andrew Hoang on 7/15/21.
//

import SwiftUI

struct RoundedViewImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedViewImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
            Circle()
                .fill(Color("ButtonFilledBackgroundColor"))
            )
        
    }
}

struct RoundRectTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68.0, height: 56.0)
            .foregroundColor(Color("TextColor"))
            .overlay(RoundedRectangle(cornerRadius: 21.0)
                .stroke(lineWidth: 2.0)
                .foregroundColor(Color("ButtonStrokeColor"))
        )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedViewImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedViewImageViewFilled(systemName: "list.dash")
            RoundRectTextView(text: "100")
        }
    }
}


struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
