//
//  ContentView.swift
//  SwiftUIStateBindingObservableObject
//
//  Created by Thongchai Subsaidee on 7/6/2564 BE.
//

import SwiftUI

struct ContentView: View {

    @StateObject var infoDataVM = InfoDataViewModel()
    
    var body: some View {
        NavigationView {
            
            VStack {
                StateView(infoDataVM: infoDataVM)
                    .navigationBarTitle("Pass Data Between View")
                
                Button(action: {
                    infoDataVM.save()
                }, label: {
                    Text("Save")
                })
            }
        }
        .environmentObject(infoDataVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
