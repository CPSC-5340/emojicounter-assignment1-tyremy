//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

let emojis = ["🤣", "🥳", "😡", "🥶", "👻", "👽" ]

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Array(emojis.enumerated()), id: \.element) {
                    index, emoji in
                        emojiItem(counter: 0, image: emoji)
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}

struct emojiItem: View {
    
    @State var counter = 0
    var image : String
    
    var body: some View {
        HStack {
            //Image(systemName: "\(image)")
                //.imageScale(.large)
            Text("\(image)")
                .font(.system(size: 36))
            Text("Counter: \(counter)")
            Spacer()
            Image(systemName: "plus")
                .imageScale(.large)
                .padding(3)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.red, lineWidth: 2)
                )
                .onTapGesture {
                    counter += 1
                }
            Image(systemName: "minus")
                .imageScale(.large)
                .padding(9)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.red, lineWidth: 2)
                )
                .onTapGesture {
                    counter -= 1
                }
        }
        .foregroundColor(.red)
        .padding()
    }
    
}
