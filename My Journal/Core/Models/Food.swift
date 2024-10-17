import SwiftUI

struct Food: Identifiable {
    let id = UUID().uuidString
    let image: UIImage
    let title: String
    let description: String?
    let date: Date
}
