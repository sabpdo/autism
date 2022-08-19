//
//  ContentView.swift
//  autismSpeechGame
//
//  Created by Sophia Yang on 2022-08-16.
//

import SwiftUI
import CoreData
import UIKit

struct ContentView:View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Home()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
