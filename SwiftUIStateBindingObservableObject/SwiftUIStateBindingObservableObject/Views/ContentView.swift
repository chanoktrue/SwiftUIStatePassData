//
//  ContentView.swift
//  SwiftUIStateBindingObservableObject
//
//  Created by Thongchai Subsaidee on 7/6/2564 BE.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            StateView()
                .navigationBarTitle("Count")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
