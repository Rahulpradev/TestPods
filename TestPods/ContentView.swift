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
    var title: String = ""
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button("Testing pods") {
            self.didTap = !self.didTap
            var nsDictionary: NSDictionary?
            if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
                nsDictionary = NSDictionary(contentsOfFile: path)
                print(nsDictionary?["SERVER_URL"] as? String ?? "default")
            }
            //vm.showMsg()
        }
//        .background(self.didTap ? Color.yellow : Color.green)
        #if DEV
        .background(Color.white)
        .foregroundColor(self.didTap ? Color.green : Color.yellow)
        #elseif PROD
        .background(Color.orange)
        .foregroundColor(Color.white)
        #endif
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
