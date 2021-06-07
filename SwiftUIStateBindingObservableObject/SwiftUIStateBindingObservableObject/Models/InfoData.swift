//
//  InfoData.swift
//  SwiftUIStateBindingObservableObject
//
//  Created by Thongchai Subsaidee on 7/6/2564 BE.
//

import SwiftUI

struct InfoData {
    var name: String
    var vesion: Int
    
    static var values: InfoData {
        return InfoData(name: "Xcode", vesion: 12)
    }
}
