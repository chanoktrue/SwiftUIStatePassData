//
//  InfoDataViewModel.swift
//  SwiftUIStateBindingObservableObject
//
//  Created by Thongchai Subsaidee on 7/6/2564 BE.
//

import SwiftUI

class InfoDataViewModel: ObservableObject {
    @Published var  infoData: InfoData = InfoData.values
}
