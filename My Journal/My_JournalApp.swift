//
//  My_JournalApp.swift
//  My Journal
//
//  Created by Никита Кисляков on 23.09.2024.
//

import SwiftUI

@main
struct My_JournalApp: App {

    @StateObject private var viewModel: JournalViewModel = JournalViewModel()

    var body: some Scene {
        WindowGroup {
            JournalView()
        }
        .environmentObject(viewModel)
    }
}
