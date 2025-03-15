//
//  SwiftLogoView.swift
//  HellowSwiftUI
//
//  Created by Alexander Shevtsov on 12.03.2025.
//

import SwiftUI

struct SwiftLogoView: View {
    let color: Color // чтоб не хардкодить цвет, создаем свойство...

    var body: some View {
//      Color.orange можно вместо круга скруглить само тело
        ZStack {
            Circle()
            //          .ignoresSafeArea() // игнорирует Safe Area
                .foregroundColor(color) // цвет круга
                .frame(width: 250, height: 250) // набираем .framewh
            //          .clipShape(Circle()) // обрезка по кругу
                .overlay(Circle().stroke(Color.white, lineWidth: 1)) //выделение границ белым толщь 1
                .shadow(radius: 8) // тень
            
            Image(systemName: "swift")
                .resizable() // если меняется не размер картинки а его рамка
                .foregroundColor(.white)
                .frame(width: 150, height: 150)
                .offset(x: -10, y: -10) // выравниваем по осям
        }
    }
}

#Preview {
    SwiftLogoView(color: .orange) // ... и иниц его тут
}
