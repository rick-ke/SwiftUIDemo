//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by twRick on 2019/6/19.
//  Copyright © 2019 Rick. All rights reserved.
//

import SwiftUI

struct MapView : View {
    var body: some View {
        Image("Map")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

struct CircleImage : View {
    var body: some View {
        Image("Tree")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(
                Circle().stroke(Color.orange, lineWidth: 5)
            )
    }
}

struct ContentView : View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("陽明山")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("陽明山國家公園")
                        .font(.subheadline)
                    Spacer()
                    Text("台北市")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
