//
//  ContentView.swift
//  TestPods
//
//  Created by RAHUL PRADEV on 02/05/22.
//

import SwiftUI

struct ContentView: View {
    var vm = ContentViewModel()
    @State private var didTap:Bool = false
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button("Testing pod") {
            self.didTap = !self.didTap
            //vm.showMsg()
        }
//        .background(self.didTap ? Color.yellow : Color.green)
        .foregroundColor(self.didTap ? Color.green : Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
