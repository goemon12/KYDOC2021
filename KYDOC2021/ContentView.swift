//
//  ContentView.swift
//  KYDOC2021
//
//  Created by Tadahiro Kato on 2021/12/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(white: 0.8)
                    .edgesIgnoringSafeArea(.bottom)
                VStack {
                    Text("This is Test.")
                }
            }
            .font(.system(size: 30, weight: .regular, design: .monospaced))
            .navigationTitle("KYボード V1.0")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
