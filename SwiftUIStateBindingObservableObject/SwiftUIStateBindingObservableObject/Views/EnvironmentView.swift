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
        Text(infoDataVM.infoData.name)
            .padding()
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
            .environmentObject(InfoDataViewModel())
            
    }
}
