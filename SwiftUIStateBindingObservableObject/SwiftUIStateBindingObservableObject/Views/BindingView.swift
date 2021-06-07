//
//  SecondView.swift
//  SwiftUIStateBindingObservableObject
//
//  Created by Thongchai Subsaidee on 7/6/2564 BE.
//

import SwiftUI

struct BindingView: View {
        
    // Binding
    @Binding var number: Int
    
    
    // StateOBject
    @ObservedObject var infoDataVM: InfoDataViewModel
    
    
    var body: some View {
        VStack {
            
            // Binding
            Text("Number same SataeView : \(number)")
                .padding()
            
            Button("State") {
                self.number = self.number + 1
            }
            .padding()
            
            
            // StateObject            
            Text("StateObject : \(infoDataVM.infoData.name) : \(infoDataVM.infoData.vesion)")
            
            Button(action: {
                self.infoDataVM.infoData.name = infoDataVM.infoData.name == "Xcode" ? "SWift" : "Xcode"
                self.infoDataVM.infoData.vesion = infoDataVM.infoData.vesion == 12 ? 5 : 12
            }, label: {
                Text("StateObject")
                    .padding()
            })
            
            // EnvironmentObject
            NavigationLink(
                destination: EnvironmentView(),
                label: {
                    Text("EnvironmentOBject")
                        .padding()
                })
            
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(number: .constant(0), infoDataVM: InfoDataViewModel())
    }
}
