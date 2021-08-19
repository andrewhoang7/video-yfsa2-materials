//
//  Shapes.swift
//  Bullseye
//
//  Created by Andrew Hoang on 7/13/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Text("Hello, World!")
        VStack {
            Circle()
//                .fill(Color.blue)
//                .inset(by: 10.0)
//                .stroke(Color.blue, lineWidth: 20.0)
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
