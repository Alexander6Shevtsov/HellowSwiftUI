//
//  HellowSwiftUIApp.swift
//  HellowSwiftUI
//
//  Created by Alexander Shevtsov on 12.03.2025.
//

import SwiftUI

@main // точка входа в приложение
struct HellowSwiftUIApp: App { // структура подписанная под протокол App
    var body: some Scene { // вычисляемое свойство body c типом some Scene(тип протокола)
        WindowGroup { // окно расположения сцен
            ContentView() // возвращаемая сцена
        }
    }
}
