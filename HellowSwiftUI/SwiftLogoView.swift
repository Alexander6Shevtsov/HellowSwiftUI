//
//  SwiftLogoView.swift
//  HellowSwiftUI
//
//  Created by Alexander Shevtsov on 12.03.2025.
//

import SwiftUI

struct SwiftLogoView: View {
    var body: some View {
        Color.orange
            .ignoresSafeArea() // игнорирует Safe Area
            .frame(width: 250, height: 250) // набираем .framewh
            .clipShape(Circle()) // обрезка по кругу
            .overlay(Circle().stroke(Color.black, lineWidth: 4)) //выделение границ
        
    }
}

#Preview {
    SwiftLogoView()
}
