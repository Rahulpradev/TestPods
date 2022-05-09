//
//  ContentView.swift
//  TestPods
//
//  Created by RAHUL PRADEV on 02/05/22.
//

import SwiftUI

struct ContentView: View {
    var vm = ContentViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button("Testing pod") {
            //vm.showMsg()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
