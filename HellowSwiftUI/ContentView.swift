//
//  ContentView.swift
//  HellowSwiftUI
//
//  Created by Alexander Shevtsov on 12.03.2025.
//

import SwiftUI
    // основной экран приложения
struct ContentView: View { // подписываем под View
    var body: some View { // вычисляемое свойство возвращает какую то View
        HStack { // правой кн то Text Embed in HStack
            Image(systemName: "swift")
                .font(.largeTitle)
                .foregroundColor(.orange)
            VStack(alignment: .leading) { // правой кн то Text Embed in VStack
                Text("Hello, SwiftUI!") // чтоб под ним разместить еще текст
                    .font(.title)
                    .foregroundColor(.red)
                HStack {
                    Text("This is SwiftUI View")
                        .font(.subheadline) // размер текста
                    Spacer() // раздвигает элементы
                    Text("Lesson One")
                }
            }
        }
        .padding() // добавляет отступы везде по 16
    }
}

#Preview {
    ContentView()
}
