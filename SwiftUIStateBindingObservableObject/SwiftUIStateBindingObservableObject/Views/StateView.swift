//
//  FirstView.swift
//  SwiftUIStateBindingObservableObject
//
//  Created by Thongchai Subsaidee on 7/6/2564 BE.
//

import SwiftUI

struct StateView: View {
    
    // State
    @State var number: Int = 0
    @State var isBindingView: Bool = false
    
    // StateObject
    @StateObject var infoDataVM = InfoDataViewModel()
    
    var body: some View {
        VStack {
            
            // State
            Text("Hello, world! : \(number)")
                .padding()
            
            Button("State") {
                self.number = self.number + 1
            }
            .padding()
            
            NavigationLink(
                destination: BindingView(number: $number, infoDataVM: infoDataVM),
                isActive: $isBindingView,
                label: {
                    Text("Binding")
                        .padding()
                })
            
            
            // StateObject            
            Text("StateObject : \(infoDataVM.infoData.name) : \(infoDataVM.infoData.vesion)")
            
            Button(action: {
                self.infoDataVM.infoData.name = infoDataVM.infoData.name == "Xcode" ? "SWift" : "Xcode"
                self.infoDataVM.infoData.vesion = infoDataVM.infoData.vesion == 12 ? 5 : 12
            }, label: {
                Text("StateObject")
                    .padding()
            })
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
