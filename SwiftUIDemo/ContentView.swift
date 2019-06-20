//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by twRick on 2019/6/19.
//  Copyright © 2019 Rick. All rights reserved.
//

import SwiftUI

struct MapView : View {
    @State private var zoomed = true
    
    var body: some View {
        Image("Map")
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .tapAction { self.zoomed.toggle() }
    }
}

struct CircleImage : View {
    var body: some View {
        Image("Tree")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(
                Circle().stroke(Color.orange, lineWidth: 5)
            )
    }
}

struct TitleLabel : View {
    var body: some View {
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
    }
}

struct StarButton : View {
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            VStack {
                Text("這是一個按鈕")
                    .padding([.leading, .top, .trailing])
                Image(systemName: "star")
                    .padding(.bottom)
            }
        }
        .background(Color.blue, cornerRadius: 10)
        .foregroundColor(Color.white)
    }
}

struct ContentView : View {
    var tapButton: () -> Void = { }
    @State private var backgroundColor = false
    
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            TitleLabel()
                .tapAction { self.backgroundColor.toggle() }
            
            Button(action: {
                self.tapButton()
            }) {
                VStack {
                    Text("這是一個按鈕")
                        .padding([.leading, .top, .trailing])
                    Image(systemName: "star")
                        .padding(.bottom)
                }
                }
                .background(backgroundColor ? Color.blue : Color.green, cornerRadius: 10)
                .foregroundColor(Color.white)
            
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
