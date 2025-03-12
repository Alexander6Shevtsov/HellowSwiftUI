//
//  ContentView.swift
//  HellowSwiftUI
//
//  Created by Alexander Shevtsov on 12.03.2025.
//

import SwiftUI
// основной экран приложения
struct ContentView: View { // подписываем под View
    @State private var tapCount = 0 // @State помечается то что меняет состояние в интерфейсе
    
    var body: some View { // вычисляемое свойство возвращает какую-то View
        VStack {
            SwiftLogoView(color: .orange)
                .padding(.bottom, -10) // придвинуть текст выше
            
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
                
                Spacer()
            }
            
//            Button("Tap count: \(tapCount)") { //  кнопка без измен текста
//                tapCount += 1
//            }
            Button(action: { tapCount += 1 }) { // чтобы считало, нужен приват метод после body...
                Text("Tap count: \(tapCount)")
                    .font(.title)
            }
            .padding()
            .background(.blue) // фон кнопки
            .foregroundColor(.white) // цвет шрифта
            .clipShape(Capsule()) // скругление капсулой
        } // ничего не указываем - везде по 16 | .padding(.top, 16) только верх
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)) // добавляет отступы
    }
    
//    private func buttonAction() { !но если метод в одну строку -> сразу пишем её в {}
//        tapCount += 1
//    }
}

#Preview {
    ContentView()
}
