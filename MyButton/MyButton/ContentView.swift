//
//  ContentView.swift
//  MyButton
//
//  Created by Alfonso Almonte Espinosa on 24/9/23.
//

import SwiftUI

struct ContentView: View {
    let x = "My Button"
    @State private var show = false
    
    var body: some View {
        Button(action: {
            show = true
            print("Hi! from console")
        })
        {
            Text(x)
        }.alert(isPresented: $show, content: {
            Alert(title: Text("Title"), message: Text("Write your Message"),dismissButton: .default(Text("Accept")))
        })
    }
}

#Preview {
    ContentView()
}
