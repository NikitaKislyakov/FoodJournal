import SwiftUI

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let viewModel = JournalViewModel()
    
    private init() {}
    
    let food = Food(image: UIImage(named: "Image")!, title: "Карамелле с крабом и креветками", description: "Вкуснейшая паста в ресторане Uva. Кушал во время поездки в Питер с Лерочкой", date: .now)
}
