//
//  EnvironmentView.swift
//  SwiftUIStateBindingObservableObject
//
//  Created by Thongchai Subsaidee on 7/6/2564 BE.
//

import SwiftUI

struct EnvironmentView: View {
    
    @EnvironmentObject var infoDataVM: InfoDataViewModel
    
    var body: some View {
        VStack {
            Text(infoDataVM.infoData.name)
                .padding()
            
            TextField("Enter : ", text: $infoDataVM.infoData.name)
                .padding()
            
            Button(action: {
                infoDataVM.save()
            }, label: {
                Text("Save")
            })
        }
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
            .environmentObject(InfoDataViewModel())
            
    }
}
